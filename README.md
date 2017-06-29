# big-album-art
A Flask app to display almost-fullscreen album art for your currently playing Spotify songs. Enjoy the visuals!

Work in progress.

## Setup
Use Python 3.5.2

Install dependencies with
```
$ pip install -r requirements.txt
```

## Develop

Run app with 
```
$ FLASK_APP=baa/main.py flask run
```

Access it on [localhost](localhost:5000)

## Add New Dependencies

```
# install em with pip in the venv
$ pip freeze --local > requirements.txt
```

## Links

* https://flask-admin.readthedocs.io/en/latest/
* https://flask-login.readthedocs.io/en/latest/
* https://pythonhosted.org/Flask-OAuth/
* https://developer.spotify.com/web-api/authorization-guide/

