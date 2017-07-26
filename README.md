[![Build Status](https://travis-ci.org/th4t/big-album-art.svg?branch=master)](https://travis-ci.org/th4t/big-album-art)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENCE)

# big-album-art
A Flask app to display almost-fullscreen album art for your currently playing Spotify songs. Enjoy the visuals!

Work in progress.

## Setup
Use Python 3.5.2

On Ubuntu 16.04 you'll need the following additional packages:
* libpq-dev
* python-dev
* (maybe some more)

Install python dependencies with, preferably in a virtualenv
```
$ pip install -r baa/requirements.txt
```

## Develop

Don't forget to set all necessary environment variables (see below).

Run containerized service dependencies with docker-comopose:
```
docker-compose up
```
Both the database and redis should be up eventually.

Run app with 
```
$ FLASK_APP=baa/main.py flask run
```

or

```
$ cd baa
$ python main.py
```

Access it on [localhost](localhost:5000)

## Add New Dependencies

```
# install em with pip in the venv
$ pip freeze --local > baa/requirements.txt
```

## Env Variables

To get the app running, be sure to set variables as defined in the *[env.example](env.example)* file.

For deveolpment, you can append them at the end of the *bin/activate* file of your virtualenv.

## Links

Used:
* http://flask-sqlalchemy.pocoo.org/2.1/
* https://flask-login.readthedocs.io/en/latest/
* https://developer.spotify.com/web-api/authorization-guide/

Maybe someday:
* https://flask-admin.readthedocs.io/en/latest/

## TODOs

* [x] Travis CI
* [x] Sentry for convenient error handling
* [x] Explanation screen with login button

* [ ] check if the token has expired with a simple request, handle updating it gracefully
* [ ] JS makes too many requests - something might be stacking up or carrying over
* [ ] Maybe switch to using blueprints for the fun of it
* [ ] Admin interface for the same reason
* [ ] Proper testing
* [ ] Useful logging
