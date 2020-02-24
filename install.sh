#!/bin/bash
sudo yum update -y
sudo yum -y install git
sudo yum -y install maven
sudo yum install nodejs -y
sudo yum install epel-release
sudo yum install ansible -y
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
sudo yum install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld
sudo firewall-cmd ––permanent ––add-port=80/tcp
sudo firewall-cmd ––permanent ––add-port=443/tcp
sudo firewall-cmd ––reload
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y
sudo yum install epel-release -y
sudo yum install python-pip -y
sudo yum install centos-release-scl -y
sudo yum install rh-python36 -y
scl enable rh-python36 bash
sudo yum groupinstall 'Development Tools' -y
mkdir ~/my_new_project
cd ~/my_new_project
scl enable rh-python36 bash
python -m venv my_project_venv
source my_project_venv/bin/activate
cd

