FROM base/archlinux

RUN pacman -Sy && pacman -S --noconfirm curl
RUN curl -o /usr/bin/btsync.tar.gz http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz
RUN mkdir -p /var/run/btsync

COPY btsync.conf /btsync.conf

VOLUME /data

EXPOSE 8888
EXPOSE 55555

CMD ["btsync", "--config", "/btsync.conf", "--nodaemon"]
