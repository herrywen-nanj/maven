# !/bin/bash -l
echo "开启打包过程：docker build -t sqhx ."
rsync --version
#rsync -av --exclude=tools ./*   ./tools
array=(config gamedata lib properties gs.jar gs.xio.default.xml gs.xio.xml gsx.mkdb.xml ignite_config_battle_server.xml ignite_config_game_server.xml ignite-log4j.xml)
for i in ${!array[[*]}
do
    rsync -av  ${array[$i]}  ./tools
done
docker images
# 服务器关机的话，需要进入容器执行docker login登录腾讯云
#cd tools && docker build -t sqhx_java .  && docker tag sqhx_java  ccr.ccs.tencentyun.com/miwan/sqhx_java:latest  && docker push ccr.ccs.tencentyun.com/miwan/sqhx_java:latest

