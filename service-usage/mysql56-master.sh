docker run -d \
    --restart always \
    --name mysql56-master \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -p 10010:3306 \
    -v /home/sunday/workspace/docker/data/mysql56-master/data:/var/lib/mysql \
    -v /home/sunday/workspace/docker/data/mysql56-master/conf.d:/etc/mysql/conf.d \
    mysql:5.6 
