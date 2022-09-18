#!/bin/bash

RELEASE_NAME=my_release 

helm repo add jenkins https://charts.jenkins.io
helm repo update
helm install ${RELEASE_NAME} jenkins/jenkins

# password 
echo "my username: admin"
echo "my password: $(kubectl exec --namespace default -it svc/my-jenkis-jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo)"

# expose
kubectl --namespace default port-forward svc/my-jenkis-jenkins 8080:8080
