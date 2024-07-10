docker pull jenkins/jenkins


mkdir -p /usr/local/docker/jenkins/jenkins_home

chmod 777 /usr/local/docker/jenkins/jenkins_home


#　　-v /etc/localtime:/etc/localtime让容器使用和服务器同样的时间设置。
#   jdk 和 maven是为了Java快速构建
docker run -u root -d -p 10240:8080 \
-p 10241:50000 \
-v /usr/local/docker/jenkins/jenkins_home/jenkins_home:/var/jenkins_home \
-v /etc/localtime:/etc/localtime \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/bin/docker:/usr/bin/docker \
-v /usr/local/software/jdk1.8.0_202:/usr/local/jdk \
-v /usr/local/software/apache_maven_3.9.6:/usr/local/maven \
--name myjenkins --security-opt seccomp=unconfined jenkins/jenkins
