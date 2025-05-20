# Kubernetes EKS Demo

This is a simple project to demonstrate deploying a static web page to **AWS Elastic Kubernetes Service (EKS)** using Docker and Kubernetes.

**Github**: [`stevesegall56/k8s-eks-demo`](https://github.com/stevesegall56/k8s-eks-demo)
**Docker Image**: [`stevesegall/k8s-eks-demo`](https://hub.docker.com/r/stevesegall/k8s-eks-demo)

## What's in the Project

- `Dockerfile`: Builds a lightweight image using `nginx` to serve `index.html`
- `index.html`: A static asset containing a summary of how I built and deployed the project
- `deployment.yaml`: Kubernetes Deployment config for EKS
- `service.yaml`: LoadBalancer Service for public access

## How to Use

1. Build the Docker image:
    ```bash
    docker build -t stevesegall/k8s-eks-demo:latest .
    docker push stevesegall/k8s-eks-demo:latest
    ```

2. Deploy to Kubernetes:
    ```bash
    kubectl apply -f deployment.yaml
    kubectl apply -f service.yaml
    ```

## License

MIT
