FROM base/archlinux

COPY ./repo /repo
RUN cat /repo >> /etc/pacman.conf
RUN pacman -Sy
RUN pacman -S --noconfirm nginx-custom
RUN pacman -S --noconfirm libxml2
RUN pacman -S --noconfirm libxslt
RUN useradd www-data

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
