# use the latest version of python
FROM python:3.10.13-bullseye

# get some credit
LABEL maintainer="jdr0887@renci.org"

# update/install basic tools
RUN apt-get update
RUN apt-get install -yq bash vim emacs-nox

# update pip
RUN pip install --upgrade pip

# create a new non-root user
ARG USERNAME=nru
ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid $USER_GID $USERNAME && useradd --uid $USER_UID --gid $USER_GID --system --create-home -m $USERNAME
RUN chown -R $USER_UID:$USER_GID /home/$USERNAME
RUN chmod -R 755 /home/$USERNAME


