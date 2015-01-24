#!/bin/sh

docker run  \
	-d \
	--name dockerui \
	-p 127.0.0.1:8060:9000 \
	-v /var/run/docker.sock:/var/run/docker.sock \
	dockerui/dockerui
