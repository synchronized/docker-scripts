docker run -d \
    --restart on-failure:5 \
    --name mysql57 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -p 33306:3306 \
    -v /home/sunday/workspace/docker/data/mysql57/:/var/lib/mysql \
    mysql:5.7 
