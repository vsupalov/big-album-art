#! /bin/bash

set -e

virtualenv -q -p /usr/bin/python3.5 /srv/env

source /srv/env/bin/activate
pip install -r requirements.txt

export FLASK_APP=main.py
export FLASK_DEBUG=1
flask createdb
flask run --host=0.0.0.0 --port=5000
