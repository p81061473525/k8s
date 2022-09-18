#!/bin/bash

# main()
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-release bitnami/harbor

# INFO
export SERVICE_IP=$(kubectl get svc --namespace default my-release-harbor --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
echo "Harbor URL: http://$SERVICE_IP/"

echo "###########"
echo Username: "admin"
echo Password: $(kubectl get secret --namespace default my-release-harbor-core-envvars -o jsonpath="{.data.HARBOR_ADMIN_PASSWORD}" | base64 -d)

# uninstall
# helm uninstall my-release
