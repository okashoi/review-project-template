.PHONY: pdf clean

pdf:
	docker-compose run --rm review make

clean:
	docker-compose run --rm review make clean
	docker-compose down
