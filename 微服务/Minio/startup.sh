chmod -R 777 /root/minio/data

docker run -it -d --name minio -m 400m \
-p 9000:9000 -p 9001:9001 \
-v /usr/local/docker/minio/data:/data \
-e TZ=Asia/Shanghai --privileged=true \
--env MINIO_ROOT_USER="admin" \
--env MINIO_ROOT_PASSWORD="mima2333.." \
bitnami/minio:latest
