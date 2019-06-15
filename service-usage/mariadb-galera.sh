docker run --rm \
    --name mariadb-galera \
    -h node1 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -e MYSQL_USER=rsync \
    -e MYSQL_PASSWORD=123456 \
    -e WSREP_CLUSTER_ADDRESS="gcomm://" \
    -e WSREP_CLUSTER_NAME=kstone_wsrep_cluster \
    -e WSREP_SST_AUTH="rsync:123456" \
    panubo/mariadb-galera
