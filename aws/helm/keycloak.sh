#!/bin/bash

PASSWORD=12345678

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-release --set auth.adminPassword=${PASSWORD} bitnami/keycloak

echo "@@@@@@"

echo URL: $(kubectl get --namespace default svc -w my-release-keycloak)

echo Username: user
echo Password: $(kubectl get secret --namespace default my-release-keycloak -o jsonpath="{.data.admin-password}" | base64 -d)
