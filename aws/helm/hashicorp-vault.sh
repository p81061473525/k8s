#!/bin/bash

helm repo add hashicorp https://helm.releases.hashicorp.com
helm install vault hashicorp/vault

# expose 
kubectl poat-forward svc/vault 8200
