docker run -u root -d -p 7080:80 -p 2222:22 \
                       --name gitlab \
                       --privileged=true \
                       --volume /usr/local/docker/gitlab/config:/etc/gitlab \
                       --volume /usr/local/docker/gitlab/logs:/var/log/gitlab \
                       --volume /usr/local/docker/gitlab/data:/var/opt/gitlab \
                       gitlab/gitlab-ce:latest
