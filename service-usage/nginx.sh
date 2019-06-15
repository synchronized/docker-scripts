docker run -d \
    --name=nginx \
    --restart=on-failure:5 \
    --link=php56-fpm:php-fpm \
    -p 80:80 \
    -p 443:443 \
    --volumes-from=php56-fpm \
    -v /home/sunday/workspace/docker/data/nginx/etc/conf.d/lightstory.conf:/etc/nginx/conf.d/default.conf:ro \
    nginx:1.10

