#install Java 1.8 in CentOS/RHEL 7.X
wget http://dev1.biz-motion.com/softback/jdk-8-linux-x64.rpm

rpm -Uvh jdk-8-linux-x64.rpm
export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64
sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64 >> /etc/environment"
echo 'export JAVA_HOME=/usr/java/jdk1.8.0_172-amd64' >> ~/.bashrc 
alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_172-amd64/bin/java 20000
alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_172-amd64/bin/javac 20000
alternatives --install /usr/bin/javaws javaws /usr/java/jdk1.8.0_172-amd64/bin/javaws 20000
alternatives --set java /usr/java/jdk1.8.0_172-amd64/bin/java
alternatives --set javaws /usr/java/jdk1.8.0_172-amd64/bin/javaws
alternatives --set javac /usr/java/jdk1.8.0_172-amd64/bin/javac
alternatives --set jar /usr/java/jdk1.8.0_172-amd64/bin/jar


