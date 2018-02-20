up:
	docker-compose -f ./docker-compose.yml up

down:
	docker-compose down

install:
	docker-compose -f ./docker-compose.yml run --rm sentry upgrade

stop:
	docker-compose stop

start:
	docker-compose start
