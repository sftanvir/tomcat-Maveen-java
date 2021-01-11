#install bizws dependencies
yum install -y epel-release
yum install -y wget
yum install -y curl
yum install -y unzip
yum install -y 7z
./java8_install.sh
./httpd_install.sh
./tomcat_install.sh
./maven_install.sh
./postgresql_install.sh
#echo 'BIZ_PROFILE=biz-prod' >> ~/.bashrc 
#echo 'BIZ_CONFIG_DIR=/root' >> ~/.bashrc 
#echo 'GPLMOTION_SOURCE_DIR=/root/bizmotion-ws/bizmotion-websvc' >> ~/.bashrc 

#echo "alias compile='/root/orion-compile.sh'"
#echo "alias deploy='/root/orion-deploy.sh'"
#echo "alias sync='/root/orion-sync.sh'"
#echo "alias websync='/root/orion-sync-web.sh'"
#echo "alias dbbackup='/root/orion-dbbackup.sh'"
sleep 1
source ~/.bashrc

yum install -y git

cp /etc/localtime /root/old.timezone
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Dhaka /etc/localtime

