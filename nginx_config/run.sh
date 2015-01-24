#!/bin/sh

docker run \
	-d \
	--name nginx_config \
	-v /etc/nginx:/etc/nginx \
	derintendant/nginx_config
