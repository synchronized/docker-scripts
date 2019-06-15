docker run -d \
    --name=nginx-laravel \
    --restart=on-failure:5 \
    --link=php-laravel-5.6-fpm:php-fpm \
    -p 8000:80 \
    --volumes-from=php-laravel-5.6-fpm \
    -v /home/sunday/workspace/docker/data/nginx-laravel/etc/conf.d/lightstory.conf:/etc/nginx/conf.d/default.conf:ro \
    nginx:1.10

