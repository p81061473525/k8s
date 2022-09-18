#!/bin/bash

# Reference
# https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack

# helm
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# main()
helm install prometheus prometheus-community/kube-prometheus-stack

# expose
kubectl port-forward deployment/prometheus-grafana 3000

# login
echo "username: admin"
echo "password: prom-operator"
