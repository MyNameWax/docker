docker run -d \
-v /usr/local/docker/shardingsphere/proxy/conf:/opt/shardingsphere-proxy/conf \
-v /usr/local/docker/shardingsphere/proxy/ext-lib:/opt/shardingsphere-proxy/ext-lib \
-e ES_JAVA_OPTS="-Xmx256m -Xms256m -Xmn128m" \
-p 3321:3307 \
--name shardingsphere \
apache/shardingsphere-proxy:5.1.1
