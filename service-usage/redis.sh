docker run -d \
    --restart on-failure:5 \
    --name redis \
    -p 6379:6379 \
    -v /home/sunday/workspace/docker/data/redis/:/data \
    redis:3.2-alpine
