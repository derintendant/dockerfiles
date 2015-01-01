FROM base/arch

RUN pacman -Sy && pacman -S --noconfirm curl
RUN curl -o /usr/bin/btsync.tar.gz http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz
RUN mkdir -p /meta/.sync
RUN mkdir -p /var/run/btsync
RUN mkdir -p /data

ADD btsync.conf /btsync.conf

VOLUME [/data]

EXPOSE 8888
EXPOSE 55555

ENTRYPOINT ["btsync"]

CMD ["--config", "/btsync.conf", "--nodaemon"]

