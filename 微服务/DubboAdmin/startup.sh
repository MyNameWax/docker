docker run -d --name dubbo-admin \
-e admin.registry.address=nacos://192.168.20.188:8848?namespace=tl-live \
-e admin.config-center=nacos://192.168.20.188:8848?namespace=tl-live \
-e admin.metadata-report.address=nacos://192.168.20.188:8848?namespace=tl-live \
-e admin.root.user.name=root \
-e admin.root.user.password=root \
-p 7080:8080 \
apache/dubbo-admin
