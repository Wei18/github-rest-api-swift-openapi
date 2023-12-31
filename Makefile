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