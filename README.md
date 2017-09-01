[![Build Status](https://travis-ci.org/th4t/big-album-art.svg?branch=master)](https://travis-ci.org/th4t/big-album-art)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENCE)

# Big Album Art
A Flask app to display almost-fullscreen album art for your currently playing Spotify songs. Enjoy the visuals!

Live at [baa.vsupalov.com](http://baa.vsupalov.com).
Case study project of a [blogpost series](http://vsupalov.com/flask-app-big-album-art/) on developing a real-life web application.
Work in progress.

## Development Setup
You need to install Docker, and docker-compose.

Copy the *env_dev* file to *env_dev_secret*, and insert your
Spotify app key and secret.
That file is not tracked by git.
You can create an app [here](https://developer.spotify.com/my-applications/).

Bringing up a development environment
from the repository consists of the following commands:

```
$ docker-compose build
$ docker-compose up
```

Access it on [localhost](localhost:5000)

For curiosity or to start working on the app without Docker:
See the Dockerfile in *compose/app_dev* for installed
packages. The *start.sh* file in the same directory
performs all necessary steps to run the app in dev mode.

### Run Flask Admin Commands
```
# go into the docker container and enter the virtualenv
$ make go_into_app
$ source /srv/maintenance.sh

# do stuff
$ flask resetdb
```

### Interact Directly With The Database
```
$ make go_into_db
```

### Add New Dependencies
```
# go into the docker container and enter the virtualenv
$ make go_into_app
$ source /srv/maintenance.sh

# install new pip modules in the venv here

# save them
$ pip freeze --local > requirements.txt
```

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
