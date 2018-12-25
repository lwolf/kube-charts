# Helm repository for serving my charts.

Helm repository hosted using github-pages to simplify installation and dependency management of my charts.

```
$ helm repo add lwolf-charts https://charts.lwolf.org
"lwolf-charts" has been added to your repositories
$ helm repo update
$ helm search | grep lwolf
lwolf-charts/gitlab             0.1.0   GitLab Community Edition
lwolf-charts/stolon             0.1.0   Stolon Helm Chart for Kubernetes.
```

# Current content:
* Gitlab - gitlab-ce
* Runner - gitlab runner
* Kubereplay - kubereplay operator
* Registry - docker registry with gitlab settings
* Stolon - HA PostgreSQL cluster
* Plex - plex.tv media center
* VictoriaMetrics - https://victoriametrics.com prometheus storage

