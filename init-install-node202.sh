#!/bin/bash

# selinux close check
getenforce

# date check 
systemctl restart chronyd 
timedatectl set-timezone "Asia/Taipei"
echo "sleep 5"
sleep 5
date 

# node 
yum install kubernetes-node.x86_64 etcd.x86_64 flannel -y

# etcd
cp node202-etcd.conf /etc/etcd/etcd.conf
# systemctl start etcd
# systemctl start etcd
read -p "是否啟動etcd " etcd
systemctl start etcd
systemctl status etcd
read -p "等候 肉眼 確認 etcd " etcd

# kubernetes
cp node202-kubelet-config.conf /etc/kubernetes/kubelet
cp node202-kubernetes-config.conf /etc/kubernetes/config
cp node202-kubernetes-proxy.conf /etc/kubernetes/proxy
systemctl start kube-proxy kubelet
systemctl status kube-proxy kubelet 

# flanneld 
cp node202-flanneld.conf /etc/sysconfig/flanneld
systemctl restart flanneld
systemctl restart docker
iptables -P FORWARD ACCEPT
