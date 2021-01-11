yum install -y httpd mod_ssl
setsebool -P httpd_can_network_connect 1
apachectl start
firewall-cmd --zone=public --permanent --add-service=https
firewall-cmd --zone=public --permanent --add-service=http
sleep 1
firewall-cmd --reload
/sbin/chkconfig httpd on 
yum install -y php

