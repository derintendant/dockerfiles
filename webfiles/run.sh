#!/bin/sh

docker run \
	-d \
	--name webfiles \
	-v /var/www:/var/www \
	derintendant/webfiles
