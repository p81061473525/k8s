#!/bin/bash

# Debug 20220618
set -ex

# Variable
CLUSTER_NAME=tester2
VERSION=1.29
REGION=ap-northeast-1
NODEGROUP_NAME=linux
# NODE_TYPE=t2.micro
NODE_TYPE=t3.medium
# NODE_TYPE=t3.xlarge
NODES=2

# Main()
eksctl create cluster \
    --name ${CLUSTER_NAME} \
    --version ${VERSION} \
    --region ${REGION} \
    --nodegroup-name ${NODEGROUP_NAME} \
    --node-type ${NODE_TYPE} \
    --nodes ${NODES}

# Show 
aws eks update-kubeconfig --region ${REGION} --name ${CLUSTER_NAME}
echo "@@@@@@@@@@@@@@@@@@@@@@"
kubectl get svc
kubectl get nodes

# Slack,TG  
# add your notify to make your like work smooth
