SHELL := /bin/bash

.PHONY: up
up: down build-shared
	cd frontend && npm install
	cd microservices && npm install
	docker-compose up --build -d

.PHONY: build-shared
build-shared:
	cd shared && npm install && npm run build

.PHONY: logs
logs:
	@if [ "$(app)" = "" ]; then \
		echo "Please specify an app name: make logs app=frontend|api"; \
	else \
		docker-compose logs -f $(app); \
	fi

.PHONY: down
down:
	docker-compose down -v

.PHONY: stop
stop:
	docker-compose stop

.PHONY: start
start:
	docker-compose start
