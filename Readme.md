# k8s

## 架構
```
.
├── Makefile
├── Readme.md
├── aws
│   ├── ,gitlab-ci.yaml
│   ├── Makefile
│   ├── Readme.md
│   ├── helm
│   │   ├── Prometheus.sh
│   │   ├── argocd.sh
│   │   ├── gitlab.sh
│   │   ├── harbor.sh
│   │   ├── hashicorp-vault.sh
│   │   ├── istio-kiali.sh
│   │   ├── jenkis.sh
│   │   ├── keycloak.sh
│   │   └── rancher.sh
│   ├── init
│   │   └── eksctl-install.sh
│   └── resource
│       ├── aws_offical
│       │   ├── clusterip.yaml
│       │   ├── loadbalancer.yaml
│       │   ├── nodepoart.yaml
│       │   └── sample_deployment.yaml
│       ├── cronjobs.yaml
│       └── deployment
│           └── deployment.yaml
├── gcp
│   ├── Makefile
│   ├── Manage
│   │   ├── HPA.yaml
│   │   └── limit-example.yaml
│   ├── Readme.md
│   ├── helm
│   ├── init
│   └── resource
│       ├── configMap
│       │   ├── configMap.yaml
│       │   └── redis-configMap.yaml
│       ├── context
│       │   ├── Readme.md
│       │   ├── config-demo
│       │   └── config-demo-3rd
│       ├── deployment
│       │   ├── deployment-2.yaml
│       │   ├── deployment.yaml
│       │   └── redis.yaml
│       ├── ingress
│       │   └── ingress.yaml
│       ├── namespace
│       │   └── namespace.yaml
│       ├── prode
│       │   ├── exec-liveness.yaml
│       │   └── liveness.yaml
│       ├── secrect
│       │   └── secrect.yaml
│       ├── service
│       │   └── gcp_offical
│       │       ├── my-Externalname.yaml
│       │       ├── my-cluster-service-lab-nginx.yaml
│       │       ├── my-cluster-service.yaml
│       │       ├── my-loadbalancer-service.yaml
│       │       └── my-nodeport-service.yaml
│       ├── stateful
│       │   ├── sample-stateful-nginx.yaml
│       │   └── sample-stateful-redis.yaml
│       └── volume
│           ├── pv-minikube.yaml
│           ├── pv.yaml
│           └── pvc-pod-demo.yaml
└── minikube
    ├── ,gitlab-ci.yaml
    ├── Makefile
    ├── Makefile copy
    ├── Readme.md
    ├── helm
    ├── init
    └── resource
        ├── deployment
        └── service
            └── aws_offical

```

## 提交策略

