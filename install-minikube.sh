#!/bin/bash
# base on centos7 , vm create by vagrant
# 校正時間
systemctl restart chronyd 

##########################
# kubectl source install #
##########################

cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF
sudo yum install -y kubectl

####################
# install minikube #
####################
curl -kLO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -Uvh minikube-latest.x86_64.rpm

##################
# install docker #
##################
git clone https://github.com/p81061473525/docker.git
cd docker
chmod u+x allinone.sh
./allinone.sh

###########
# useradd #
###########
useradd k8s 
echo k8s | passwd k8s --stdin
usermod -aG docker k8s

####################
# minikube install #
####################

# sudo -u k8s minikube start 
# 開另外一個終端(會有兩個分別執行以下兩個指令）
sudo -u k8s minikube dashboard --url &
sudo -u k8s kubectl proxy --address 0.0.0.0 --accept-hosts '.*' --port 3000 & 

##########
# notify #
##########
# 請加入自己的 TG , SLACK , etc...通知自己。
