docker run -d \
    --restart on-failure:5 \
    --name mysql56 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -p 3306:3306 \
    -v /home/sunday/workspace/docker/data/mysql56/:/var/lib/mysql \
    mysql:5.6 
