#!/bin/bash

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# [optional]
# svc loadbalance
# - kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
# expose
# - kubectl port-forward svc/argocd-server -n argocd 8080:443

# password 
echo "username: admin
echo "password: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo)
