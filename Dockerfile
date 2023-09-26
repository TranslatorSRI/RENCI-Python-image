# use the latest version of python
FROM python:3.9.18-bullseye

# get some credit
LABEL maintainer="powen@renci.org"

# update/install basic tools
RUN apt-get update
RUN apt-get install -yq bash vim emacs-nox

# update pip
RUN pip install --upgrade pip

# create a new non-root user
RUN useradd -M -u 1000 nru


