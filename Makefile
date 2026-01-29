.PHONY: help dev build preview up down restart logs clean

.DEFAULT_GOAL := help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

# Local development (no Docker)
dev: ## Start local dev server
	npm run dev

build: ## Build static output to dist/
	npm run build

preview: ## Preview production build locally
	npm run preview

# Docker
up: ## Build and start Docker container (port 3000)
	docker compose up -d --build

down: ## Stop Docker container
	docker compose down

restart: ## Rebuild and restart Docker container
	docker compose down
	docker compose up -d --build

logs: ## Tail Docker container logs
	docker compose logs -f

# Cleanup
clean: ## Remove dist/, node_modules/, .astro/
	rm -rf dist node_modules .astro
