[![Build Status](https://travis-ci.org/th4t/big-album-art.svg?branch=master)](https://travis-ci.org/th4t/big-album-art)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENCE)

# Big Album Art (2017)
A Flask app to display almost-fullscreen album art for your currently playing Spotify songs. Enjoy the visuals!

This project was started with minimal effort, and has since been **retired**.
A lot of bad patterns in here, which have not been corrected.

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

### The App Container Crashes - How Do I Find Out What's Wrong?
It tries to start the dev server right away for convenience.
If that crashes for some reason, the container stops as well.
Here's what you need to be able to debug it in such a case.

Uncomment the 'entrypoint' line in the docker-compose.yml file,
bring the stack down and up again. Now the container is running,
and you can exec into it and fix the issue, so it works again.
```
# go into the docker container and enter the virtualenv
$ make go_into_app
$ source /srv/maintenance.sh
```

## Links

Used:
* http://flask-sqlalchemy.pocoo.org/2.1/
* https://flask-login.readthedocs.io/en/latest/
* https://developer.spotify.com/web-api/endpoint-reference/
* https://developer.spotify.com/web-api/authorization-guide/

Maybe someday:
* https://flask-admin.readthedocs.io/en/latest/
