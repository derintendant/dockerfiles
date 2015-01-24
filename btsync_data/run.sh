#!/bin/sh

docker run -d -v /var/btsync:/data --name btsync_data busybox echo Data-only container for btsync
