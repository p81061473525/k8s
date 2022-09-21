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
│   ├── Readme.md
│   ├── helm
│   ├── init
│   │   └── Readme.md
│   └── resource
│       ├── deployment
│       │   └── deployment.yaml
│       ├── ingress
│       ├── prode
│       ├── service
│       │   └── gcp_offical
│       │       ├── my-Externalname.yaml
│       │       ├── my-cluster-service.yaml
│       │       └── my-nodeport-service.yaml
│       └── volume
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

