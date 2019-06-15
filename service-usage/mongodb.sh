docker run -d \
    --restart on-failure:5 \
    --name mongodb \
    -p 27017:27017 \
    -v /home/sunday/workspace/docker/data/mongodb/data/:/data/db \
    -v /home/sunday/workspace/docker/data/mongodb/config/:/data/configdb \
    mongo
