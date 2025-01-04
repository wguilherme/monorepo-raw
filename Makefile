.PHONY: up down stop start logs

up:
	cd frontend && npm install
	cd microservices && npm install
	docker-compose up -d

logs:
	@if [ "$(app)" = "" ]; then \
		echo "Please specify an app name: make logs app=frontend|api"; \
	else \
		docker-compose logs -f $(app); \
	fi

down:
	docker-compose down -v

stop:
	docker-compose stop

start:
	docker-compose start
