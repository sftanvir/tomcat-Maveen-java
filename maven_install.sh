#install maven
wget https://downloads.apache.org/maven/maven-3/3.6.3/source/apache-maven-3.6.3-src.tar.gz
tar -xvzf apache-maven-3.6.3-src.tar.gz -C /opt/
echo 'M2_HOME=/opt/apache-maven-3.6.3' >> ~/.bashrc 
echo 'PATH=$PATH:/opt/apache-maven-3.6.3/bin' >> ~/.bashrc 
sleep 1
source ~/.bashrc

