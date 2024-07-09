#!make
# Special-Targets
# https://www.gnu.org/software/make/manual/html_node/Special-Targets.html

# Variables
.DEFAULT_GOAL  := install
OPENAPI_PATH   := Submodule/github/rest-api-description/descriptions/api.github.com/api.github.com.yaml
FILTERED_NAMES := $(shell yq -r '.tags[].name' $(OPENAPI_PATH))
SOURCE_DIRS    := $(addprefix Sources/, $(FILTERED_NAMES))
PACKAGE_PATHS  := Package.swift
# Fix: https://github.com/irgaly/setup-mint/pull/25
MINT_BIN       := $(HOME)/mint

# Helper
.SILENT: commit
.PHONY: commit
commit:
	git add "$(file)"
	git commit -m "Commit via running $make $(file)" >/dev/null \
		&& echo "::notice:: git commit $(file)\n" \
		|| true;
	touch "$(file)";

# Create sources
%/openapi-generator-config.yml:
	@mkdir -p "$(@D)"; \
		tag_name=$(shell basename $(shell dirname $@)); \
		swift Scripts/GeneratorConfigBuilder.swift $$tag_name

%/Client.swift %/Types.swift: $(OPENAPI_PATH)
	@echo "\n\nFolder $(@D) running"
	@$(MAKE) "$(@D)/openapi-generator-config.yml"
	$(MINT_BIN) run apple/swift-openapi-generator generate \
		"$(OPENAPI_PATH)" \
		--config "$(@D)/openapi-generator-config.yml" \
		--output-directory "$(@D)";
	@touch $(@D)/*.swift
	@rm "$(@D)/openapi-generator-config.yml";
	@echo ;

Sources/%: Sources/%/Client.swift Sources/%/Types.swift
	@$(MAKE) commit file="$@"

# Update openapi specification if needed
.PHONY: Submodule
Submodule:
ifdef GITHUB_ACTIONS ## https://docs.github.com/en/actions/learn-github-actions/variables
	@touch "$(OPENAPI_PATH)"
else
	@git submodule update --recursive --remote
	@$(MAKE) commit file="$@"
	# @touch "$(OPENAPI_PATH)" # Uncomment to force-install
endif

# Update Package.swift
.DELETE_ON_ERROR: $(SOURCE_DIRS)
$(PACKAGE_PATHS): $(SOURCE_DIRS)
	swift Scripts/PackageBuilder.swift "$@"
	@$(MAKE) commit file="$@"

.spi.yml: $(PACKAGE_PATHS)
	swift Scripts/SPIManifestBuilder.swift
	@$(MAKE) commit file="$@"

# Install
install: Submodule .spi.yml
