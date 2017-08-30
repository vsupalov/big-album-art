#! /usr/bash

set -e

virtualenv -q -p /usr/bin/python3.5 /srv/env

source /srv/env/bin/activate
pip install -r requirements.txt

FLASK_APP=main.py flask run --host=0.0.0.0 --port=5000
