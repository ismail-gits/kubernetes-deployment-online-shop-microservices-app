# Kubernetes Deployment Of Online Shop Microservices App

This repository provides a streamlined process for deploying the microservices of an online shop application on Kubernetes. By leveraging the power of Kubernetes, you can efficiently deploy, manage, and scale each component of your online shop architecture.

## Features

- **Microservices Architecture**: Utilizes a microservices architecture to modularize the application and improve maintainability and scalability.
- **Service Discovery**: Enables seamless communication between microservices within the Kubernetes cluster through service discovery mechanisms.
- **Persistence**: Supports persistence for services such as Redis, ensuring data integrity and reliability.
- **Scalability**: Easily scale individual microservices based on demand, ensuring optimal performance during peak times.
- **Docker Images**: Docker images for the microservices are fetched from [Google Container Registry](https://console.cloud.google.com/gcr/images/google-samples/GLOBAL/microservices-demo), ensuring reliability and security.

## Prerequisites
Before proceeding with the installation, ensure you have the following prerequisites in place:

- **Kubernetes Cluster**: Access to a Kubernetes cluster where you have the necessary permissions to deploy resources.
- **kubectl**: Make sure you have `kubectl` installed and configured to communicate with your Kubernetes cluster.

## Getting Started
Follow these steps to deploy the microservices in kubernetes cluster:

1. 1. **Clone the Repository**: Clone this repository to your local machine.

   ```bash
   git clone https://github.com/ismail-gits/kubernetes-deployment-online-shop-microservices-app.git
   ```

2. **Configure Kubernetes**: Ensure your `kubectl` is set up to interact with your Kubernetes cluster.

3. **Creating namespace**: Creating namespace to isolate resources:

    ```bash
    kubectl create namespace onlineshopapp
    ```

4. **Execute Deployment Scripts**:

    ```bash
    ./install-deployments.sh -n onlineshopapp
    ./install-services.sh -n onlineshopapp
    ```

5. **Accessing the Application**: Once deployed, access the online shop application through the exposed services within your Kubernetes cluster.

6. **Monitoring and Management**: Utilize Kubernetes tools for monitoring and managing the deployed microservices, ensuring optimal performance and reliability.

7. **Uninstall Microservices**: To uninstall the microservices, run the uninstallation scripts:

    ```bash
    ./uninstall-deployments.sh -n onlineshopapp
    ./uninstall-services.sh -n onlineshopapp
    ```

This will remove all deployed microservices associated with the online shop application from your Kubernetes cluster.

## Security Best Practises:
- Tag version for each container image
- Livesness probe for each container
- Readiness probe for each container
- Resource requests for each container
- Resource limits for each container
- Using LoadBalancer instead of exposing NodePort, in this case we have used NodeBalancer of Linode
- More than 1 replica for deployment
- More than 1 worker node in the cluster
- Using labels for each resources
- Using namespaces to isolate resources

## Deployment Environment
This application was deployed using Linode Kubernetes Engine (LKE).

## Configuration
Each microservice is configured using YAML files located in the kubernetes-deployments and kubernetes-services directories. These files define the deployment specifications and service definitions for each microservice.

## Acknowledgements
I would like to extend my gratitude to Google Cloud for hosting the publicly available Docker images used in this project. This Helm chart was inspired by the need for a robust and scalable solution for deploying online shop applications on Kubernetes.
