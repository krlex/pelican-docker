FROM debian:latest
MAINTAINER Chris Ramsay <chris@ramsay-family.net>

# Update & add prerequisites
RUN apt-get -y update && apt-get install -y \
  python \
  python3-dev \
  python3-pip \
  git

WORKDIR /srv
ADD requirements.txt /srv/requirements.txt
ADD files/bashrc /root/.bashrc

RUN pip install -r requirements.txt
