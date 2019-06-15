docker run -dit \
    --name=php56-fpm \
    --restart=on-failure:5 \
    --link=mysql56:mysql \
    --link=redis:redis \
    --link=memcached:memcached \
    -v /home/sunday/workspace/docker/data/php56-fpm/data:/var/www/html \
    -v /home/sunday/workspace/docker/data/php56-fpm/etc/php.ini:/usr/local/etc/php/php.ini:ro \
    synchronized/php:5.6-fpm

