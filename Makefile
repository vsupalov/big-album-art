run_server_prod:
	gunicorn -w 4 -b 127.0.0.1:9020 baa.main:app

run_dev:
	docker-compose up
go_into_db:
	docker-compose exec db psql --user postgres test
go_into_app:
	docker-compose exec app bash

run_prod:
	docker-compose -f docker-compose.prod.yml up -d
restart_prod:
	docker-compose -f docker-compose.prod.yml down
	docker-compose -f docker-compose.prod.yml build
	docker-compose -f docker-compose.prod.yml up -d
logs_prod:
	docker-compose -f docker-compose.prod.yml logs
