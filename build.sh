# !/bin/bash -l
echo "开启打包过程：docker build -t sqhx ."
rsync -av --exclude=tools ./*   ./tools
docker images
# 服务器关机的话，需要进入容器执行docker login登录腾讯云
#cd tools && docker build -t sqhx_java .  && docker tag sqhx_java  ccr.ccs.tencentyun.com/miwan/sqhx_java:latest  && docker push ccr.ccs.tencentyun.com/miwan/sqhx_java:latest

