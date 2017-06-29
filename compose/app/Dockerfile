FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get upgrade -qqy

RUN apt-get install -qqy \
    python-virtualenv \
    libpq-dev \
    python3 \
    python3-dev

#RUN useradd app

RUN mkdir -p /srv
ADD start.sh /srv/start.sh
RUN chmod +x /srv/start.sh

#RUN chown -R app:app /srv
#USER app

ENTRYPOINT ["/bin/bash", "/srv/start.sh"]
