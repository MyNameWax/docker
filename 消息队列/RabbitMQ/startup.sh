docker run -it --name=rabbitmq \
 -v /usr/local/docker/rabbitmq:/var/lib/rabbitmq \
 -p 15672:15672 -p 5672:5672 \
  -e RABBITMQ_DEFAULT_USER=root \
  -e RABBITMQ_DEFAULT_PASS=root \
  rabbitmq:management
