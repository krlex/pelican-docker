FROM debian:latest
MAINTAINER Krstan Vjestica <krle@tilda.center>

# Update & add prerequisites
RUN apt-get -y update && apt-get install -y \
  python \
  python3-dev \
  python3-pip \
  python3-setuptools \
  python3-pecan \
  git

WORKDIR /srv
ADD requirements.txt /srv/requirements.txt
ADD files/bashrc /root/.bashrc

RUN pip3 install --upgrade setuptools
RUN pip3 install -r requirements.txt
