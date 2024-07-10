  docker run -it -d --name mysql -p 3310:3306 \
  -m 400m -v /usr/local/docker/mysql/data:/var/lib/mysql \
  -v /usr/local/docker/mysql/conf:/etc/mysql/conf.d \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -e TZ=Asia/Shanghai --privileged=true \
  mysql:8.0.23 \
  --lower_case_table_names=1
