#!/bin/bash

# add helm repo
helm repo add rancher-latest https://releases.rancher.com/server-charts/latest

# namespace
kubectl create namespace cattle-system

# main()
helm install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set tls=external \
  --set hostname=rancher.my.org \
  --set bootstrapPassword=admin \

kubectl -n cattle-system rollout status deploy/rancher

kubectl -n cattle-system get deploy rancher

# passwrod
echo "username: admin "
echo "password: admin "

# expose
kubectl port-forward svc/rancher -n cattle-system 443
