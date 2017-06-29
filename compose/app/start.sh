#! /usr/bash

set -e

virtualenv -q /srv/env

source /srv/env/bin/activate
pip install -r requirements.txt

gunicorn -w 4 -b 0.0.0.0:8000 baa.main:app
