#!/bin/bash 

# Sleep for a short while until the instance fully boots up.
sleep 15

# Update packages
sudo yum -y update

# Install packages.
sudo yum -y install mc tree sysstat dstat telnet ifstat iostat ImageMagick
sudo yum -y install htop --enablerepo=epel

# install docker
sudo subscription-manager repos --enable=rhel-7-server-extras-rpms
sudo yum update
sudo yum -y install docker

# start docker at start
sudo chkconfig docker on
sudo service docker start

# Login to quay.io account
sudo docker login -e="." -u="michal_dec+deploy" -p="1PCLJHPY3CBN1J2CDPY4QK4IWFCBZT270IC6KHILHEOEW044NVI0MHNN815Y651C" quay.io

# Start docker container
sudo docker run -d --name springboot_workshops --restart=always -p 8070:8070 quay.io/michal_dec/springboot_workshops:1