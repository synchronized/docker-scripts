sudo mkdir -p /home/sunday/workspace/docker/data/nexus
sudo chown -R 200 /home/sunday/workspace/docker/data/nexus
docker run -d \
    --name nexus \
    -p 18081:8081 \
    -v /home/sunday/workspace/docker/data/nexus:/sonatype-work \
    sonatype/nexus
