docker run -dit \
    --name=php-laravel-5.6-fpm \
    --restart=on-failure:5 \
    --link=mysql56:mysql \
    --link=redis:redis \
    --link=memcached:memcached \
    -v /home/sunday/workspace/php/laravel/blog:/app \
    -v /home/sunday/workspace/php/laravel/blog/php/php.ini:/usr/local/etc/php/php.ini:ro \
    synchronized/php-laravel:5.6-fpm

