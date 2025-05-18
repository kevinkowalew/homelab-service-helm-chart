# Homelab Service Helm Chart
## Intent
- this repo contains a generic helm chart use to deploy services in my homelab

## `values.yaml` deinfitions
| Chart Value         | Default values |
|---------------------|----------------|
| name                |                |
| namespace           |                |
| deployment.replicas |                |
| config              |                |
| image.registryHost  |                |
| image.name          |                |
| image.version       |                |
| service.enabled     |                |
| service.protocol    | TCP            |
| service.port        | 8080           |
| service.targetPort  | 8080           |
| service.type        | ClusterIP      |
| cron.schedule       |                |
| cron.restartPolicy  | Never          |
