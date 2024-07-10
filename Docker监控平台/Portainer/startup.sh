# 拉取镜像
docker pull portainer/portainer

# 启动容器
docker run -d -p 8100:8000 -p 9100:9000 \
--name=portainer \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/local/docker/portainer/data:/data \
portainer/portainer
