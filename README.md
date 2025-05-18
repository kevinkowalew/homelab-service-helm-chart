# Homelab Service Helm Chart
## Intent
- this repo contains a generic helm chart use to deploy services in my homelab

## `values.yaml` deinfitions
| Chart Value         | Description                                          | Default value |
|---------------------|------------------------------------------------------|----------------|
| name                | name of your application                             |                |
| namespace           | K8s namespace you wish to deploy your application to |                |
| deployment.replicas | # of replicas you wish to have in your deployment    |                |
| config              | key-value pair data to be stored in your config map  |                |
| image.registryHost  | docker registry host                                 |                |
| image.name          | docker image name                                    |                |
| image.version       | docker image version                                 |                |
| service.enabled     | enable a K8s Service                                 | false          |
| service.protocol    | K8s Service protocol you wish to use                 | TCP            |
| service.port        | K8s Service port you wish to use                     | 8080           |
| service.targetPort  | K8s Service targetPort you wish to use               | 8080           |
| service.type        | K8s Service type you with to use                     | ClusterIP      |
| cron.schedule       | K8s CronJob schedule                                 |                |
| cron.restartPolicy  | K8s CronJob restartPolicy                            | Never          |
