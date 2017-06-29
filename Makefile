run_server_dev:
	FLASK_APP=baa/main.py flask run        
run_server_prod:
	gunicorn -w 4 -b 127.0.0.1:9020 baa.main:app
run_deps:
	docker-compose up -d
run_prod:
	docker-compose -f docker-compose.prod.yml up -d
