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
cp node201-etcd.conf /etc/etcd/etcd.conf
# systemctl start etcd
# systemctl start etcd
# etcdctl cluster-health
read -p "是否啟動etcd " etcd
systemctl start etcd
systemctl status etcd
read -p "等候 肉眼 確認 etcd " etcd

# kubeconfig
cp node201-kubelet-config.conf /etc/kubernetes/kubelet
cp node201-kubernetes-config.conf /etc/kubernetes/config
cp node201-kubernetes-proxy.conf /etc/kubernetes/proxy
systemctl start kube-proxy kubelet
systemctl status kube-proxy kubelet 

# flanneld 
cp node201-flanneld.conf /etc/sysconfig/flanneld
systemctl restart flanneld
systemctl restart docker
iptables -P FORWARD ACCEPT
