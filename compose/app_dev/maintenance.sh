#! /bin/bash
set -e

source /srv/env/bin/activate

export FLASK_APP=main.py
export FLASK_DEBUG=1
