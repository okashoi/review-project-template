.PHONY: pdf lint clean

pdf:
	docker-compose run --rm review make

lint:
	docker-compose run --rm textlint make lint

clean:
	docker-compose run --rm review make clean
	docker-compose down
