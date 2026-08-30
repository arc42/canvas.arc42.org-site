.DEFAULT_GOAL := help

# This site's fixed local dev port. Every arc42 site has its own so their dev
# servers can run side by side; see raw/port-assignment.md in meta.arc42.org.
# Changing it here is not enough: docker-compose.yml and the Dockerfile pass
# the same number to Jekyll so its startup banner names the real port.
SITE_PORT ?= 4044

.PHONY: help dev build stop site check-links clean install update shell logs

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-14s\033[0m %s\n", $$1, $$2}'

dev: ## Start the local Jekyll dev server with live reload (http://localhost:4044)
	@echo "==> Open http://localhost:$(SITE_PORT)  (NOT http://0.0.0.0:$(SITE_PORT) — Firefox refuses to connect to 0.0.0.0)"
	@docker compose down --remove-orphans >/dev/null 2>&1 || true
	@holder=$$(docker ps --filter "publish=$(SITE_PORT)" --format '{{.Names}}'); \
	if [ -n "$$holder" ]; then \
		echo "==> Port $(SITE_PORT) is already in use by another container: $$holder"; \
		echo "==> That's likely a dev server from a sibling arc42 site repo. Stop it first, e.g.:"; \
		echo "==>   docker stop $$holder"; \
		exit 1; \
	fi
	docker compose up --build

build: ## Build the Docker dev image (canvas-arc42-site:latest) from the Gemfile-pinned gems
	docker compose build

stop: ## Stop and remove the running dev container
	docker compose down

site: build ## Generate the static site into _site/
	docker compose run --rm jekyll bundle exec jekyll build

check-links: site ## Validate internal links, images, and HTML in the built _site (html-proofer)
	docker compose run --rm jekyll bundle exec htmlproofer ./_site --disable-external --allow-hash-href

clean: ## Remove generated _site AND the Docker cache volumes (a true reset)
	@# Order matters. .jekyll-cache/.sass-cache are the host-side mount points of
	@# named volumes, and while those volumes exist Docker Desktop stamps a
	@# "user:<you> deny delete" ACL on the directories — so an `rm -rf` first
	@# fails with "Permission denied". Dropping the volumes releases the ACL.
	-docker compose down -v --remove-orphans
	@# Belt and braces for dirs left behind by an interrupted run: strip any
	@# lingering ACL. BSD-only flag, so failure here is fine (and ignored).
	-@chmod -RN _site .sass-cache .jekyll-cache 2>/dev/null || true
	rm -rf _site .sass-cache .jekyll-cache .jekyll-metadata

install: build ## Install/refresh gems into the dev image after editing the Gemfile
	docker compose run --rm jekyll bundle install

update: build ## Update gems to their latest allowed versions (rewrites Gemfile.lock)
	docker compose run --rm jekyll bundle update

shell: build ## Open a shell inside the dev container for debugging
	docker compose run --rm jekyll bash

logs: ## Tail logs from the running dev container
	docker compose logs -f jekyll
