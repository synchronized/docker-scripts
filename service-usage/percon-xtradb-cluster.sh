docker run -it --rm \
    --name percona-xtradb-cluster \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -p 3307:3306 \
    -v /home/sunday/workspace/docker/data/percona-xtradb-cluster/data:/var/lib/mysql \
    -v /home/sunday/workspace/docker/data/percona-xtradb-cluster/conf.d:/etc/mysql/conf.d \
    percona/percona-xtradb-cluster
