#!make

# Maintanence
# The path and implemenet for OPENAPI_PATH.
# The pattern and implemenet for TAG_NAMES.

# Special-Targets #
# https://www.gnu.org/software/make/manual/html_node/Special-Targets.html
.DEFAULT_GOAL := install
OPENAPI_PATH := Submodule/github/rest-api-description/descriptions/api.github.com/api.github.com.yaml
.SECONDARY: $(%.yml)

Source/%/openapi.yml: $(OPENAPI_PATH)
	@ln -sf ../../$(OPENAPI_PATH) $@
	@git add $@
	@echo "::debug:: make $@"

TAG_NAMES := $(shell yq -r '.tags[].name' $(OPENAPI_PATH))
SUBDIRS := $(addprefix Sources/, $(TAG_NAMES))
OPENAPI_CONFIG_FILES := $(addsuffix /openapi-generator-config.yml, $(SUBDIRS))
%/openapi-generator-config.yml: $(OPENAPI_PATH)
	mkdir -p "$(@D)"
	@tag_name=$(shell basename $(shell dirname $@)); \
	echo "generate:" > $@; \
	echo "  - types" >> $@; \
	echo "  - client" >> $@; \
	echo "" >> $@; \
	echo "filter:" >> $@; \
	echo "  tags:" >> $@; \
	echo "    - $$tag_name" >> $@; \
	echo "" >> $@; \
	echo "accessModifier: public" >> $@; \
	echo "" >> $@;
	@git add $@
	@echo "::debug:: make $@"

SWIFT_FILES := $(addsuffix /Client.swift, $(SUBDIRS))
%/Client.swift: %/openapi.yml %/openapi-generator-config.yml
	mint run apple/swift-openapi-generator generate $(@D)/openapi.yml \
		--config $(@D)/openapi-generator-config.yml \
		--output-directory $(@D)
	@git add $(@D)
	@git commit -m "[Make] Sync *.swift" >/dev/null \
	&& echo "::notice:: make $@" \
	|| true

.PHONY: install-$(OPENAPI_PATH)
install-$(OPENAPI_PATH):
ifdef GITHUB_ACTIONS ## https://docs.github.com/en/actions/learn-github-actions/variables
	@echo "::notice:: make $@"
else
	git submodule update --recursive --remote
	@git add Submodule
	@git commit -m "[Make]$$(git submodule status Submodule/github/rest-api-description)" >/dev/null \
	&& touch $(OPENAPI_PATH) \
	&& echo "::notice:: make $@" \
	|| true
endif

install: install-$(OPENAPI_PATH) $(SWIFT_FILES) 
	@echo "::notice:: make $@"

XCFrameworks:
	mint run giginet/Scipio create . \
		--static \
		--embed-debug-symbols \
		--support-simulators
	@touch $@
	@echo "::notice:: make $@"

%.zip: %.xcframework
	@zip -qr "$@" "$<"
	@rm -rf "$<"
	@git add "$@"
	@echo "::debug:: make $@"

install-zips: XCFrameworks
	@$(MAKE) $(shell echo XCFrameworks/*.xcframework | sed 's/\.xcframework/\.zip/g');
# 	@git commit -m "[Make] Modify xcframework zips" || true
# 	@echo "::notice:: make $@"

.PHONY: update-to-date
update-to-date:
	touch $(OPENAPI_PATH)
	touch Sources/**/openapi-generator-config.yml
	touch Sources/**/openapi.yml
	touch Sources/**/Client.swift

docs: ## Need env GITHUB_PAGES is created as 'true'
	swift package --allow-writing-to-directory $@ generate-documentation \
		--disable-indexing \
		--transform-for-static-hosting \
		--hosting-base-path github-rest-api-swift-openapi;
	sh Script/setupDocsHtml.sh

.PHONY: help
.SILENT: help
help:
	echo -----------------------------------------------------------------------
	awk 'BEGIN {FS = ":.*##"; printf "Usage:\n  make \033[36m\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-14s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
	echo -----------------------------------------------------------------------
