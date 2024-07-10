docker run -d --name my_elasticsearch \
-p 9200:9200 -p 9300:9300 \
-e discovery.type=single-node \
my_elasticsearch
