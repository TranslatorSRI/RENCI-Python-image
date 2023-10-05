ARG PYTHON_VERSION=3.9

# use the latest version of python
FROM python:${PYTHON_VERSION}-buster

# get some credit
LABEL maintainer="powen@renci.org"

# update/install basic tools
RUN apt-get update
RUN apt-get install -yq vim

# update pip
RUN pip install --upgrade pip

# create a new non-root user
RUN useradd -M -u 1000 nru


