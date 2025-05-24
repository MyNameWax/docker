docker pull mongo:7.0.0


# 创建数据卷
mkdir -p /opt/docker/docker_volumn/mongo/data/db
# 启动
docker run -d -p 27017:27017 --name mongo -v /opt/docker/docker_volumn/mongo/data/db:/data/db mongo:7.0.0
