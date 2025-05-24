docker run -it -d --name redis -m 200m \
-p 6379:6379 --privileged=true \
-v /usr/local/docker/redis/config:/usr/local/etc/redis \
-e TZ=Asia/Shanghai redis:6.0.10 \
redis-server /usr/local/etc/redis/redis.conf

docker run -p 6379:6379 --name redis \
-v /opt/docker/docker_volumn/redis/config:/etc/redis.conf \
-v /opt/docker/docker_volumn/redis/data:/app/redis \
-d redis redis-server /etc/redis.conf
