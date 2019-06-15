FROM mariadb:10.1

COPY ./docker-entrypoint-initdb.d /

ENV GALERA_NODE_LIST
ENV GALERA_NODE_NAME
ENV GALERA_NODE_ADDR
ENV GALERA_RSYNC_USER
ENV GALERA_RSYNC_PASS

RUN cat > /etc/apt/sources.list <<EOF
deb http://ftp.cn.debian.org/debian/ jessie main contrib non-free
deb http://ftp.cn.debian.org/debian/ jessie-updates main
deb http://ftp.cn.debian.org/debian/ jessie/updates main contrib
EOF

RUN apt-get update && apt-get install -y supervisor logrotate locales cron

RUN bash ${_BUILD_DIR}/install.sh