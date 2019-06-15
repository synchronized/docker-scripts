docker run -d \
    --restart always \
    --name mysql56-slave \
    --link mysql56-master:master \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -p 10011:3306 \
    -v /home/sunday/workspace/docker/data/mysql56-slave/data:/var/lib/mysql \
    -v /home/sunday/workspace/docker/data/mysql56-slave/conf.d:/etc/mysql/conf.d \
    mysql:5.6 
