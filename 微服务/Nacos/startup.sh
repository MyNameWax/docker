docker run -it -d -p 8848:8848 --env MODE=standalone \
--net mynet --ip 172.18.0.12 -e TZ=Asia/Shanghai \
--name nacos nacos/nacos-server
