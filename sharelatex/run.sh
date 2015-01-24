#!/bin/sh

docker run \
--name sharelatex \
--restart=always \
-d \
-p 8899:80 \
-v /var/sharelatex/data:/data \
-v /var/sharelatex/logs:/var/log \
jrandall/sharelatex
