#!make

# Special-Targets #
# https://www.gnu.org/software/make/manual/html_node/Special-Targets.html
.DEFAULT_GOAL := install
SUBDIRS := $(wildcard Sources/*)

.PHONY: force
force: 

Submodule: force
	git submodule update --recursive --remote
	git add $@
	git commit -m "Update $$(git submodule status Submodule/github/rest-api-description)" || true

OPENAPI_FILES := $(addsuffix /openapi.yml, $(SUBDIRS))
Sources/%/openapi.yml: Submodule
	ln -sf ../../Submodule/github/rest-api-description/descriptions/api.github.com/api.github.com.yaml $@ 
	git add $@
	git commit -m "Relink $@" || true

.PHONY: install
install: $(OPENAPI_FILES)

.build/docs: ## Need env GITHUB_PAGES is created as 'true'
	swift package --allow-writing-to-directory $@ generate-documentation \
	--disable-indexing \
	--output-path $@ \
	--transform-for-static-hosting \
	--hosting-base-path github-rest-api-swift-openapi;

.PHONY: help
.SILENT: help
help:
	echo -----------------------------------------------------------------------
	awk 'BEGIN {FS = ":.*##"; printf "Usage:\n  make \033[36m\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-14s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
	echo -----------------------------------------------------------------------
