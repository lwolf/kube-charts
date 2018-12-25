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
| Chart | Version | Description |
|-------|---------|-------------|
| Gitlab | 0.2.8 | gitlab-ce |
| Runner | 0.4.3 | gitlab runner
| Kubereplay | 0.1.0 | kubereplay operator
| Registry | 0.2.0 | docker registry with gitlab settings
| Stolon | 0.7.0 |  HA PostgreSQL cluster
| Plex | 0.1.1 | plex.tv media center
| victoria-metrics | 0.1.1 | https://victoriametrics.com prometheus storage

