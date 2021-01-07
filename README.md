# Helm repository for serving my charts.

Helm repository hosted using github-pages to simplify installation and dependency management of my charts.

```
$ helm repo add lwolf-charts http://charts.lwolf.org
"lwolf-charts" has been added to your repositories
$ helm search | grep lwolf
lwolf-charts/gitlab             0.1.0   GitLab Community Edition
lwolf-charts/stolon             0.1.0   Stolon Helm Chart for Kubernetes.
```

# Current content:
| Chart | Version | AppVersion |Description |
|-------|---------|------|-------|
| Gitlab | 0.3.0 | 11.11.0 |gitlab-ce |
| Runner | 0.5.0 | 11.11.0 |gitlab runner
| Kubereplay | 0.1.0 | 1.0.0-alpha.20 | kubereplay operator
| Registry | 0.2.0 | 2.6.0| docker registry with gitlab settings
| Stolon | 0.8.0 | v0.13.0 |HA PostgreSQL cluster
| Plex | 0.1.1 | |plex.tv media center
| victoria-metrics |  0.1.8 | 1.20.7 | https://victoriametrics.com prometheus storage
| kiali-operator |  0.2.1 | 0.21.0 | Kiali operator for istio monitoring
| kube-cleanup-operator |  1.0.0 | v0.8.1 | https://github.com/lwolf/kube-cleanup-operator
