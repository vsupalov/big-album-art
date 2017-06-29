#! /usr/bash

set -e

virtualenv -q -p /usr/bin/python3.5 /srv/env

source /srv/env/bin/activate
pip install -r requirements.txt

gunicorn -w 4 -b 0.0.0.0:8000 main:app
