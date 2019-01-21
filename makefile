
SHELL:=/bin/bash

.ONESHELL:
.DEFAULT=all
.PHONY: help 

help: ## This help.
	@echo "CURRENT VERSION: ${VERSION}"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

post: ## post - {string} t;
	cp template.md ./_posts/${shell date +"%Y-%m-%d"}-${t}.md
