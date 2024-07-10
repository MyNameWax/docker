docker pull zookeeper


docker run -d -e TZ="Asia/Shanghai" -p 2181:2181 -v /usr/local/docker/zookeeper/data:/data --name zookeeper zookeeper
