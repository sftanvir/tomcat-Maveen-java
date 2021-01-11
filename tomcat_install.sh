#install tomcat
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz
mkdir /opt/apache-tomcat
tar -xvf apache-tomcat-9.0.41.tar.gz -C /opt/apache-tomcat --strip-components=1
chmod a+x /opt/apache-tomcat/bin/*.sh
mkdir /opt/log-tomcat
firewall-cmd --zone=public --permanent --add-port=8080/tcp 
firewall-cmd --reload
echo 'export TOMCAT_HOME=/opt/apache-tomcat' >> ~/.bashrc 
echo 'export CATALINA_OUT=/opt/log-tomcat/catalina.out' >> ~/.bashrc 
echo "alias clog='less +F ${CATALINA_OUT}'" >> ~/.bashrc 
echo "alias tomcatstart='${TOMCAT_HOME}/bin/startup.sh'" >> ~/.bashrc 
echo "alias tomcatstop='${TOMCAT_HOME}/bin/shutdown.sh'" >> ~/.bashrc 
sleep 1
source ~/.bashrc
