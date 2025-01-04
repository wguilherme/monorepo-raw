SHELL := /bin/bash

.PHONY: up
up: down
	cd frontend && npm install
	cd microservices && npm install
	docker-compose up --build -d

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
