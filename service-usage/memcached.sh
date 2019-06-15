docker run -d \
    --restart=on-failure:5 \
    --name=memcached \
    --publish=11211:11211 \
    memcached:1.4-alpine
