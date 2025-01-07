# Bartadhara: News Portal Webapp

Bartadhara is a modern news portal application designed to deliver curated news to users efficiently. This repository focuses on the DevOps workflows, Kubernetes manifests, and CI/CD pipeline configurations that ensure seamless deployment and scaling.

## Project Pictures

Here are some project pictures:
![Homepage](https://github.com/imrezaulkrm/bartadhara-devops/raw/main/image/bartadhara-homepage.png)
![Singlepage](https://github.com/imrezaulkrm/bartadhara-devops/raw/main/image/bartadhara-singlepage.png)
![Adminpage](https://github.com/imrezaulkrm/bartadhara-devops/raw/main/image/bartadhara-admin.png)

## Project Overview

**Frontend:**  
Developed using **HTML**, **CSS**, and **JavaScript** to create an engaging and responsive user interface.

**Backend:**  
Built with **GoLang**, ensuring fast and reliable API services.

**Database:**  
Powered by **MySQL** to store and manage structured data effectively.

## Repository Structure

This project is organized into three repositories for better modularity:

1. **[Bartadhara Frontend](https://github.com/imrezaulkrm/bartadhara-frontend):**  
   Contains the frontend codebase for the application.

2. **[Bartadhara Backend](https://github.com/imrezaulkrm/bartadhara-backend):**  
   Includes backend APIs and logic.

3. **[Bartadhara DevOps (Current Repository)](https://github.com/imrezaulkrm/bartadhara-devops):**  
   Hosts Kubernetes manifests, Docker configurations, Jenkins pipelines, and ArgoCD deployment files.

## Features and Technologies

### **Key Features:**

-   **Fully Automated CI/CD:**  
     Using Jenkins and GitHub Webhooks for seamless integration and deployment.
-   **Scalable Architecture:**  
     Kubernetes ensures high availability and scalability for the application.
-   **GitOps Workflow:**  
     Managed by ArgoCD for continuous deployment directly from Git repositories.
-   **Ingress Configuration:**  
     Simplifies external access to internal services.

### **DevOps Stack:**

-   **Docker:** Containerizes the application for consistent environments.
-   **Jenkins:** Automates the build, test, and deployment processes.
-   **Kubernetes:** Orchestrates containerized applications for scaling and reliability.
-   **ArgoCD:** Implements GitOps for continuous delivery.
-   **Git & GitHub:** Enables version control and collaboration.
-   **Ingress Controller:** Manages routing of external traffic to internal services.

## Workflow Overview

![Bartadhara DevOps Pipeline](https://github.com/imrezaulkrm/bartadhara-devops/raw/main/image/bartadhara-diagram.png)

The workflow ensures the following:

1. Code is pushed to GitHub repositories.
2. Jenkins triggers the build process using GitHub webhooks.
3. Docker images are built and pushed to DockerHub.
4. Kubernetes deploys the updated images using ArgoCD.

## Deployment Instructions

### Prerequisites:

-   A Kubernetes cluster (e.g., Minikube, EKS, GKE).
-   Docker installed locally.
-   Jenkins setup with necessary plugins (e.g., Kubernetes, Git, Docker Pipeline).
-   ArgoCD installed and configured.

### Steps:

1. **Clone Repositories:**

```bash
   git clone https://github.com/imrezaulkrm/bartadhara-frontend
   git clone https://github.com/imrezaulkrm/bartadhara-backend
   git clone https://github.com/imrezaulkrm/bartadhara-devops
```

2. **Build Docker Images:**  
   Jenkins will automatically handle the build and push process for both the frontend and backend images.
3. **Apply Kubernetes Manifests:**  
   All Kubernetes manifests inside the `k8s/` folder (including `frontend.yml`, `backend.yml`, `ingress.yml`, and other configuration files) are required for the deployment. Use the following command to apply all Kubernetes YAML files from the `k8s/` folder:

```bash
kubectl apply -f k8s/
```

4. **Monitor Deployment:**  
   Use the following commands to verify deployments:

```bash
kubectl get pods
kubectl get services
```

## Contributing

We welcome contributions! Feel free to fork the repository and submit a pull request for review. Suggestions for improvement are always appreciated.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.
