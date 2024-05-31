include .env

check-traefik:
ifeq (,$(shell docker ps -f name=^traefik$$ -q))
	$(error docker container traefik is not running)
endif

database:
	docker compose up -d --force-recreate db

prod: check-traefik
	@echo "Starting Production Server"
	docker compose up -d --pull always --force-recreate --remove-orphans

upgrade:
	git pull
	make prod

logs:
	docker compose logs -f
