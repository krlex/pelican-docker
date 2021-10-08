FROM python:3.6

RUN apt update && apt upgrade -y && \
	pip install pelican markdown flask
RUN mkdir -p /srv/pelican/content

COPY ./content/first.md /srv/pelican/content
COPY pelicanconf.py /srv/pelican/
COPY publishconf.py /srv/pelican/
COPY ./themes/ /srv/pelican/themes/
COPY Makefile /srv/pelican/

WORKDIR /srv/pelican

# Setup and run flask server to handle git post
COPY gitpost.py /srv/pelican/
RUN mkdir ./log/
#RUN chown www-data:www-data -R /var/log/gitpost
CMD [ "python", "./gitpost.py" ]
