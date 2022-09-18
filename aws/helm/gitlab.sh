#!/bin/bash

# variable
RELEASE_NAME=gitlab

# main()
helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm upgrade --install ${RELEASE_NAME} gitlab/gitlab \
  --timeout 600s \
  --set postgresql.image.tag=13.6.0 \
  --set global.edition=ce \
  --set global.hosts.https=false \
  --set global.hosts.gitlab.https=false \
  --set certmanager-issuer.email=me@example.com

#  --set global.hosts.domain=example.com \
#  --set global.hosts.externalIP=10.10.10.10 \

# password
echo "USERNAME: root"
echo "PASSWORD: $(kubectl get secret ${RELEASE_NAME}-gitlab-initial-root-password -ojsonpath='{.data.password}' | base64 --decode ; echo) "

# expose
kubectl port-forward svc/gitlab-webservice-default 8080
