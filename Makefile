DOCKERFILE=docker-compose.dev.yml

up:
	docker-compose -f $(DOCKERFILE) up

build:
	docker-compose -f $(DOCKERFILE) build

down:
	docker-compose -f $(DOCKERFILE) down --remove-orphans

migrations:
	docker-compose -f $(DOCKERFILE) exec web python manage.py makemigrations

migrate:
	docker-compose -f $(DOCKERFILE) exec web python manage.py migrate

test:
	docker-compose -f $(DOCKERFILE) exec web python manage.py test

permission:
	sudo chmod 777 -R data