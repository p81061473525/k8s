#!/bin/bash

# selinux close check
getenforce

# date check 
systemctl restart chronyd 
timedatectl set-timezone "Asia/Taipei"
date 

# main 
yum install kubernetes-master.x86_64 etcd -y

# etcd
cp master-etcd.conf /etc/etcd/etcd.conf
# systemctl start etcd
# systemctl start etcd
# systemctl status etcd
# systemctl status etcd
# check etcdctl cluster-health
# etcdctl cluster-health
read -p "是否啟動etcd " etcd
systemctl start etcd
read -p "等候 client 確認 etcd " etcd
etcdctl cluster-health

# kubeconfig
cp master-kubeapiserver /etc/kubernetes/apiserver
systemctl restart kube-apiserver.service kube-scheduler.service kube-controller-manager.service

# Flanneld 
etcdctl mk /atomic.io/network/config '{"Network":"172.17.0.0/16","Subnetmin":"172.17.1.0","Subnetmax":"172.17.254.0"}'

# CHECK POINT
kubectl get nodes
kubectl run nginx --image=nginx
watch kubectl get pods -o wide
