docker run -it -d --name redis -m 200m \
-p 6379:6379 --privileged=true \
-v /usr/local/docker/redis/config:/usr/local/etc/redis \
-e TZ=Asia/Shanghai redis:6.0.10 \
redis-server /usr/local/etc/redis/redis.conf
