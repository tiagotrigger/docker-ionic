FROM tiagotrigger/docker-cordova

MAINTAINER Tiago <tiago@eita.com>

ENV IONIC_VERSION 4.1.1

RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    npm i -g --unsafe-perm ionic@${IONIC_VERSION} && \
    ionic --no-interactive config set -g daemon.updates false && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

RUN apt-get update && apt-get install python2.7
