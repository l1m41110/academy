#! /bin/bash
yum update -y
yum install -y httpd
curl 169.254.169.254/latest/meta-data/hostname >index.html
mv index.html /var/www/html/
service httpd start