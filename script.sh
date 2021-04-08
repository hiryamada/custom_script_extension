#!/bin/bash
apt-get update -y
apt-get install nginx -y
vmname=$(curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance/compute/name?api-version=2017-08-01&format=text")
echo $vmname `date` '<br>' >> /var/www/html/index.html
