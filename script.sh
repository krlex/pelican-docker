#!/bin/bash

###
# Add more mounts for your projects after the git/gnupg/ssh ones
# e.g. -v ~/stuff/myproject:/project \

wd=$(pwd)
docker rm -f pelicanbox
docker run \
--name pelicanbox \
-p 80:8000 \
-v $wd/git/.gitconfig:/root/.gitconfig \
-v $wd/gnupg:/root/.gnupg \
-v $wd/ssh:/root/.ssh \
-v ~/work/blog:/project \
-v ~/extras/pelican-plugins:/project/pelican-plugins  \
-v ~/extras/pelican-themes:/project/pelican-themes \
-ti \
chrisramsay/docker-pelicanbox:latest \
/bin/bash

