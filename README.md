# integration-manager-helm-chart

## Introduction

This chart installs Integration Manager on Kubernetes. 

Refer to the following chart for installing Integration Manager Workers:  
https://github.com/ActianCorp/integration-manager-worker-helm-chart

Refer to the following chart for installing the AMQP Pod Autoscaler for Integration Manager Workers:  
https://github.com/ActianCorp/amqp-pod-autoscaler-helm-chart

Add the following repository to helm:  
```helm repo add actian-datacloud https://s3.amazonaws.com/actian-datacloud-helm-charts```

To install the chart, first configure a override-values.yaml file specific for your environment:  
```helm install actian-datacloud/integration-manager -f override-values.yaml```

## Configuration

The following table lists the configurable parameters of the integration-manager chart and their default values.
  
| Parameter | Description | Default|
| -----  | ----- | ------|
| `imagePullSecrets` | name of Secret resource containing private registry credentials | [] |
| `extraConfig` | additional properties to include in the config map | {} |
| `aggregator.image` | image to pull for the aggregator service | actian/aggregator-service:2.0.5.270 |
| `aggregator.config` | configuration enabling aggregation for specific job configurations | [] |
| `aggregator.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `aggregator.affinity` | node/pod affinities | {} |
| `aggregator.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 120, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `aggregator.readinessProbe` | pod readiness probe | { "initialDelaySeconds": 30, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `aggregator.pullPolicy` | when to pull image | IfNotPresent
| `aggregator.extraInitContainers` | init containers for pod | [] |
| `aggregator.extraConfig` | additional properties to include in the config map | {} |
| `aggregator.pdb` | pod disruption budget | {} |
| `aggregator.replicaCount` | number of pods to run | 1 |
| `aggregator.extraLabels` | additional labels to add | {} |
| `aggregator.podAnnotations` | pod annotations | {} |
| `aggregator.resources` | set resource limits | {} |
| `aggregator.nodeSelector` | set nodeSelector | {} |
| `aggregator.service.annotations` | service annotations | {} |
| `aggregator.service.type` | service type | ClusterIP |
| `aggregatorProcessor.image` | image to pull for the aggregator processor | actian/aggregator-processor:2.0.5.270 |
| `aggregatorProcessor.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `aggregatorProcessor.affinity` | node/pod affinities | {} |
| `aggregatorProcessor.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 120, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `aggregatorProcessor.pullPolicy` | when to pull image | IfNotPresent
| `aggregatorProcessor.extraInitContainers` | init containers for pod | [] |
| `aggregatorProcessor.extraConfig` | additional properties to include in the config map | {} |
| `aggregatorProcessor.pdb` | pod disruption budget | {} |
| `aggregatorProcessor.replicaCount` | number of pods to run | 1 |
| `aggregatorProcessor.extraLabels` | additional labels to add | {} |
| `aggregatorProcessor.podAnnotations` | pod annotations | {} |
| `aggregatorProcessor.resources` | set resource limits | {} |
| `aggregatorProcessor.nodeSelector` | set nodeSelector | {} |
| `integrationManagerBase.image` | image to pull for the integration manager base service | actian/integration-manager-base:2.0.5.270 |
| `integrationManagerBase.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `integrationManagerBase.affinity` | node/pod affinities | {} |
| `integrationManagerBase.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 120, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `integrationManagerBase.readinessProbe` | pod readiness probe | { "initialDelaySeconds": 30, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `integrationManagerBase.pullPolicy` | when to pull image | IfNotPresent
| `integrationManagerBase.extraInitContainers` | init containers for pod | [] |
| `integrationManagerBase.extraConfig` | additional properties to include in the config map | {} |
| `integrationManagerBase.pdb` | pod disruption budget | {} |
| `integrationManagerBase.replicaCount` | number of pods to run | 1 |
| `integrationManagerBase.extraLabels` | additional labels to add | {} |
| `integrationManagerBase.podAnnotations` | pod annotations | {} |
| `integrationManagerBase.resources` | set resource limits | {} |
| `integrationManagerBase.nodeSelector` | set nodeSelector | {} |
| `integrationManagerBase.service.annotations` | service annotations | {} |
| `integrationManagerBase.service.type` | service type | ClusterIP |
| `jobExecution.image` | image to pull for the job execution service | actian/job-execution-service:2.0.5.270 |
| `jobExecution.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `jobExecution.affinity` | node/pod affinities | {} |
| `jobExecution.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 120, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `jobExecution.readinessProbe` | pod readiness probe | { "initialDelaySeconds": 30, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `jobExecution.pullPolicy` | when to pull image | IfNotPresent
| `jobExecution.extraInitContainers` | init containers for pod | [] |
| `jobExecution.extraConfig` | additional properties to include in the config map | {} |
| `jobExecution.pdb` | pod disruption budget | {} |
| `jobExecution.replicaCount` | number of pods to run | 1 |
| `jobExecution.extraLabels` | additional labels to add | {} |
| `jobExecution.podAnnotations` | pod annotations | {} |
| `jobExecution.resources` | set resource limits | {} |
| `jobExecution.nodeSelector` | set nodeSelector | {} |
| `jobExecution.service.annotations` | service annotations | {} |
| `jobExecution.service.type` | service type | ClusterIP |
| `jobResultsProcessor.image` | image to pull for the job results processor service | actian/job-results-processor:2.0.5.270 |
| `jobResultsProcessor.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `jobResultsProcessor.affinity` | node/pod affinities | {} |
| `jobResultsProcessor.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 120, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `jobResultsProcessor.readinessProbe` | pod readiness probe | { "initialDelaySeconds": 30, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `jobResultsProcessor.pullPolicy` | when to pull image | IfNotPresent
| `jobResultsProcessor.extraInitContainers` | init containers for pod | [] |
| `jobResultsProcessor.extraConfig` | additional properties to include in the config map | {} |
| `jobResultsProcessor.pdb` | pod disruption budget | {} |
| `jobResultsProcessor.replicaCount` | number of pods to run | 1 |
| `jobResultsProcessor.extraLabels` | additional labels to add | {} |
| `jobResultsProcessor.podAnnotations` | pod annotations | {} |
| `jobResultsProcessor.resources` | set resource limits | {} |
| `jobResultsProcessor.nodeSelector` | set nodeSelector | {} |
| `jobResultsProcessor.service.annotations` | service annotations | {} |
| `jobResultsProcessor.service.type` | service type | ClusterIP |
| `jobScheduler.image` | image to pull for the job scheduler service | actian/job-scheduler-service:2.0.5.270 |
| `jobScheduler.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `jobScheduler.affinity` | node/pod affinities | {} |
| `jobScheduler.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 120, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `jobScheduler.readinessProbe` | pod readiness probe | { "initialDelaySeconds": 30, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/health", "port": 8080 }} |
| `jobScheduler.pullPolicy` | when to pull image | IfNotPresent
| `jobScheduler.extraInitContainers` | init containers for pod | [] |
| `jobScheduler.extraConfig` | additional properties to include in the config map | {} |
| `jobScheduler.pdb` | pod disruption budget | {} |
| `jobScheduler.replicaCount` | number of pods to run | 1 |
| `jobScheduler.extraLabels` | additional labels to add | {} |
| `jobScheduler.podAnnotations` | pod annotations | {} |
| `jobScheduler.resources` | set resource limits | {} |
| `jobScheduler.nodeSelector` | set nodeSelector | {} |
| `jobScheduler.service.annotations` | service annotations | {} |
| `jobScheduler.service.type` | service type | ClusterIP |
| `staticContent.image` | image to pull for integration manager's static content (apidocs, console) | actian/integration-manager-static-content:2.0.5.270 |
| `staticContent.revisionHistoryLimit` | the number of old history to retain to allow rollback | 10 |
| `staticContent.affinity` | node/pod affinities | {} |
| `staticContent.livenessProbe` | pod liveness probe | { "initialDelaySeconds": 10, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/", "port": 80 }} |
| `staticContent.readinessProbe` | pod readiness probe | { "initialDelaySeconds": 5, "periodSeconds": 10, "timeoutSeconds": 5, "successThreshhold": 1, "failureThreshhold": 3, "httpGet": { "scheme": "HTTP", "path": "/", "port": 80 }} |
| `staticContent.pullPolicy` | when to pull image | IfNotPresent
| `staticContent.extraInitContainers` | init containers for pod | [] |
| `staticContent.pdb` | pod disruption budget | {} |
| `staticContent.replicaCount` | number of pods to run | 1 |
| `staticContent.extraLabels` | additional labels to add | {} |
| `staticContent.podAnnotations` | pod annotations | {} |
| `staticContent.resources` | set resource limits | {} |
| `staticContent.nodeSelector` | set nodeSelector | {} |
| `staticContent.service.annotations` | service annotations | {} |
| `staticContent.baseEndpoint` | integration manager base endpoint for the browser to send requests to | nil |
| `staticContent.jobsEndpoint` | job execution endpoint for the browser to send requests to | nil |
| `staticContent.salesForceLoginUrl` | salesforce url for login redirect | nil |
| `staticContent.agentInstallerUrlWindows` | location for the windows agent installer | nil |
| `staticContent.agentInstallerUrlLinux` | location for the linux agent installer | nil |
| `prometheus.operator.enabled` | creates service monitors when true | false |
| `prometheus.operator.serviceMonitor.interval` | interval for prometheus scraping | 10s |
| `ingress.enabled` | create ingress resource | true |
| `ingress.tls` | is tls enabled | false |
| `ingress.tlsSecret` | secret for tls | nil |
| `ingress.annotations` | annotations for ingress | {} |
| `ingress.hostName` | dns host name for ingress routing | nil |
| `ingress.pathVersionPrefix` | version prefix if running multiple versions of IM | nil |
| `imbaseUrl` | base url for IM for service to service communication | nil |
| `destinationId` | default destination id | 1 |
| `jobTimeOut` | job timeout settings | 30 |
| `resultsQueue` | queue to use for results processor | JOB_RESULTS |
| `datasource.url` | jdbc connection string | nil |
| `datasource.username` | jdbc username | nil |
| `datasource.password` | jdbc password | nil |
| `datasource.maximumPoolSize` | connection pool maximum pool size | 10 |
| `datasource.minimumIdle` | connection pool minimum idle | 2 |
| `existingRabbitSecret` | existing rabbitmq secret to use | nil |
| `existingSecret` | existing secret to use for non-rabbit configuration | nil |
| `amqp.host` | rabbitmq host endpoint | nil |
| `amqp.port` | rabbitmq amqp port | 4672 |
| `amqp.username` | rabbitmq username | nil |
| `amqp.password` | rabbitmq password | nil |
| `amqp.sslEnabled` | rabbitmq ssl connection | false |
| `amqp.sslProtocol` | rabbitmq ssl protocol | TLSv1.2 |
| `amqp.sslKeyStore` | rabbitmq keystore to use | nil |
| `amqp.sslKeyStoreType` | rabbitmq keystore type | PKCS12 |
| `amqp.sslKeyStorePassword` | rabbitmq keystore password | nil |
| `amqp.managementUrl` | rabbitmq manamagent url | nil |
| `amqp.externalHost` | host to set for agents upon registration | nil |
| `amqp.externalPort` | port to set for agents upon registration | 5672 |
| `amqp.externalSslEnabled` | use ssl for agents upon registration | false |
| `cache.enabled` | coordinated caching (requires ActiveMQ) | false |
| `jms.host` | ActiveMQ host for coordinated caching | nil |
| `jms.port` | ActiveMQ port for coordinated caching | nil |
| `jms.username` | ActiveMQ username for coordinated caching | nil |
| `jms.password` | ActiveMQ password for coordinated caching | nil |
| `repository.storageType` | where are files stored (aws, local, azure) | aws |
| `repository.sourceBucket` | root directory or s3 bucket for files | nil |
| `repository.sourcePrefix` | prefix/directory for files | history/job |
| `repository.targetBucket` | root directory or s3 bucket for execution history | nil |
| `repository.targetPrefix` | prefix/directory for execution history | history/job |
| `repository.accountDir` | directory for account files | account |
| `repository.localTempDir` | directory for temp files | tmp |
| `repository.userDir` | directory for user files | user |
| `repository.jobTemplateDir` | directory for job template files | template |
| `repository.jobConfigDir` | directory for job configuration files | configuration |
| `repository.awsServiceEndpoint` | s3 service endpoint for aws sdk | s3.us-east-1.amazonaws.com |
| `repository.awsSigningRegion` | s3 signing region for aws sdk | us-east-1 |
| `repository.azureConnectString` | connecting string for azure blob storage | nil |
| `repository.nestedJobStorage` | use nested job storage | false |
| `repository.awsCreateEnvVar` | creates env vars for aws sdk | false |
| `repository.awsAccessKeyId` | aws access key id | nil |
| `repository.awsSecretAccessKey` | aws secret access key | nil |
| `agent.baseUrl` | base url location for agent artifacts | nil |
| `agent.windowsEngine` | name of windows engine in agent.baseUrl location | nil |
| `agent.linuxEngine` | name of linux engine in agent.baseUrl location | nil |
| `notification.enabled` | enable job notifications | false |
| `notification.springMailHost` | smtp host for notifications | smtp.gmail.com |
| `notification.springMailPort` | smtp port for notifications | 587 |
| `notification.springMailProtocol` | protocol for notifications | smtp |
| `notification.springMailUsername` | smtp username for notifications | nil |
| `notification.springMailPassword` | smtp password for notifications | nil |
| `notification.springMailAuth` | auth required for notifications | true |
| `notification.springMailTLSEnable` | is tls enabled for notifications | true |
| `notification.springMailTLSRequired` | is tls required for notifications | true |
| `notification.mailFrom` | who to send notifications from | nil |
| `notification.mailTo` | who to send notifications to | nil |
| `encryption.enabled` | is database encryption enabled | false |
| `encryption.passwordEncoderType` | encoder type for password encryption | bcrypt |
| `encryption.keyStorePassword` | keystore password | nil |
| `encryption.keyStore` | base64 encoded keystore file contents | nil |
| `encryption.certificateName` | name of key in keystore | nil |
