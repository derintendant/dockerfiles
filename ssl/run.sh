#!/bin/sh

docker rm ssl
docker run \
	-d \
	--restart=always \
	--name ssl \
	-v /etc/ssl/private:/etc/ssl/private \
	derintendant/ssl
