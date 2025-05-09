# Homelab Service Template
## Intent
- this repo contains a generic helm chart use to deploy services in my homelab

## `values.yaml` deinfitions
| Chart Value        | Description                                          | Example Value           |
|--------------------|------------------------------------------------------|-------------------------|
| name               | Name of your application                             | apigateway              |
| namespace          | K8s namespace you wish to deploy your application to | prod                    |
| replicas           | # of replicas you wish to have in your deployment    | 1                       |
| config             | key-value pair data to be stored in your config map  |                         |
| image.registryHost | docker registry host                                 | 192.168.0.1:5000        |
| image.name         | docker image name                                    | kevinkowalew/apigateway |
| image.version      | docker image versio                                  | v0.0.1                  |
| service.enabled    |                                                      | true                    |
| service.protocol   | K8s Service protocol you wish to use                 | TCP                     |
| service.port       | K8s Service port you wish to use                     | 8080                    |
| service.targetPort | K8s Service targetPort you wish to use               | 8080                    |
| service.type       | K8sService type you with to use                      | ClusterIP               |
