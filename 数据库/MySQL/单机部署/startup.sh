    docker run -it -d --name mysql -p 3306:3306 \
    -m 400m -v /usr/local/docker/mysql/data:/var/lib/mysql \
    -v /usr/local/docker/mysql/conf:/etc/mysql/conf.d \
    -e MYSQL_ROOT_PASSWORD=tuduoduosb233 \
    -e TZ=Asia/Shanghai --privileged=true \
    mysql:8.0.23 \
    --lower_case_table_names=1


docker run -p 3306:3306 --name mysql8 \
-v /opt/docker/docker_volumn/mysql/log:/var/log/mysql \
-v /opt/docker/docker_volumn/mysql/data:/var/lib/mysql \
-v /opt/docker/docker_volumn/mysql/conf:/etc/mysql/conf.d \
-v /opt/docker/docker_volumn/mysql/mysql-files:/var/lib/mysql-files \
-e MYSQL_ROOT_PASSWORD=root -d mysql:8

# MySQL默认只能在本机登录，也就是只能从容器内登录。需要调整权限，允许远程访问。
docker container ls #获取容器ID
# 进⼊容器
docker exec -it 29387949bc43 /bin/bash
# 在容器内登录MySQL 。 不要输密码
mysql -u root
# 调整MySQL，允许远程连接
mysql> use mysql;
mysql> grant all PRIVILEGES on *.* to root@'%' WITH GRANT OPTION;
mysql> update user set host='%' where user='root';
mysql> ALTER user 'root'@'%' IDENTIFIED BY 'root' PASSWORD EXPIRE NEVER;
mysql> ALTER user 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
mysql> flush privileges;
# 如果都正常执⾏，那么MySQL服务就可以⽤客户端⼯具远程登录了。
