<h1 align="center" id="title">Projet EDA Repo</h1>

<p align="center"><img src="https://kubernetes.io/_common-resources/images/flower.svg" alt="project-image"></p>

<p id="description">Les fichiers (Dockerfile yaml ) pour chaque service est dans son dossier.</p>

<h2>🧐 Features</h2>

Here're some of the project's best features:

- RabbitMQ
- Kubernetes
- PostgreSQL
- Node.js
- HorizontalPodAutoscaler

<h2>🛠️ Installation Steps:</h2>

<p>1. Deployer un cluster rabbitMQ</p>

```
kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"
```

<p>2. Build le container rabbit-receiver</p>

```
make rmq
```

<p>3. Déployer le déploiement et service derabbit-receiver</p>

```
make dsrmq
```

<p>4. Build le container database</p>

```
make db
```

<p>5. Déployer le déploiement et service database</p>

```
make dsdb
```

<p>6. Build le container backend</p>

```
make back
```

<p>7. Déployer le déploiement et service backend</p>

```
make dsback
```

<h2>💻 Built with</h2>

Technologies used in the project:

- Kubernetes
- Horizontal Pod Autoscaling
- TypeScript
- Node.js
- RabbitMQ

<h2>🛡️ License:</h2>

This project is licensed under the MIT
