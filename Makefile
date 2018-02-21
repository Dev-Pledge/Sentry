up:
	docker-compose -f ./docker-compose.yml up -d

up-local:
	docker-compose -f ./docker-compose.yml -f ./docker-compose.local.yml up -d

up-prod:
	docker-compose -f ./docker-compose.yml -f ./docker-compose.prod.yml up -d

down:
	docker-compose down

install:
	docker-compose -f ./docker-compose.yml run --rm sentry upgrade

install-prod:
	docker-compose -f ./docker-compose.yml -f ./docker-compose.prod.yml run --rm sentry upgrade

stop:
	docker-compose stop

start:
	docker-compose start
