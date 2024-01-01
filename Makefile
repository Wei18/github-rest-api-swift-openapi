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
	git commit -m "[Make] Pull $$(git submodule status Submodule/github/rest-api-description)" || true
	echo "::notice:: make $@"

OPENAPI_FILES := $(addsuffix /openapi.yml, $(SUBDIRS))
%/openapi.yml: Submodule
	ln -sf ../../Submodule/github/rest-api-description/descriptions/api.github.com/api.github.com.yaml $@ 
	git add $@

SWIFT_FILES := $(addsuffix /Client.swift, $(SUBDIRS))
%.swift: $(OPENAPI_FILES)
	mint run apple/swift-openapi-generator generate $(@D)/openapi.yml \
	--config $(@D)/openapi-generator-config.yml \
	--output-directory $(@D)
	git add $@ $(@D)/Types.swift

install-files: $(SWIFT_FILES)
	git commit -m "[Make] Re-link openapi.yml & re-gen swift files." || true
	echo "::notice:: make $@"
	
#XCFrameworks:
#	mint run giginet/Scipio create . \
#	--embed-debug-symbols \
#	--support-simulators
#	echo "::notice:: make $@"
#
#XCFRAMEWORKS := $(wildcard XCFrameworks/*.xcframework)
#ZIP_FILES := $(XCFRAMEWORKS:%.xcframework=%.zip)
#%.zip: %.xcframework
#	zip -r "$@" "$^"
#	rm -rf "$^"
#	git add "$@"
#
#install-zips: XCFrameworks $(ZIP_FILES)
#	git commit -m "[Make] Re-gen framework zips" || true
#	echo "::notice:: make $@"

install: install-files

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
