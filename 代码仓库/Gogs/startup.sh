docker run --name=gogs \
-d \
-p 10022:22 -p 10880:3000 \
-v /usr/local/docker/gogs/data:/data  \
gogs/gogs
