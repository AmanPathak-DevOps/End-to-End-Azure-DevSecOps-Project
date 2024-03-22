# Project Overview: Azure DevOps with Kubernetes Deployment
[![LinkedIn](https://img.shields.io/badge/Connect%20with%20me%20on-LinkedIn-blue.svg)](https://www.linkedin.com/in/aman-devops/)
[![GitHub](https://img.shields.io/github/stars/AmanPathak-DevOps.svg?style=social)](https://github.com/AmanPathak-DevOps)
[![Medium](https://img.shields.io/badge/Medium-Follow%20Me-%2312100E.svg)](https://medium.com/@amanpathakdevops)
[![Terraform](https://img.shields.io/badge/Terraform-%E2%9C%A8-lightgrey)](https://www.terraform.io)
[![Azure Cloud](https://img.shields.io/badge/Azure%20Cloud-%230078D4.svg)](https://azure.microsoft.com)
[![HashiCorp](https://img.shields.io/badge/HashiCorp-%23326CE5.svg)](https://www.hashicorp.com)
[![HashiCorp Vault](https://img.shields.io/badge/HashiCorp%20Vault-%2363299D.svg)](https://www.vaultproject.io)
[![GitLab](https://img.shields.io/badge/GitLab-%23181717.svg)](https://about.gitlab.com)
[![FluxCD](https://img.shields.io/badge/FluxCD-%230075A8.svg)](https://fluxcd.io)

![Three-Tier Banner](assets/Azure-Three-Tier.gif)

Welcome to our Azure DevOps with Kubernetes Deployment project! This repository houses the infrastructure code, Kubernetes manifests, and source code needed to set up a robust DevOps pipeline and deploy applications to a Kubernetes cluster on Azure.

## Overview

Our project is designed to streamline the deployment process using Terraform for infrastructure provisioning, GitLab CI/CD pipelines for automated deployments, HashiCorp Vault for secure secrets management, and Kubernetes for container orchestration. By following our guide and utilizing the provided resources, you'll be able to create a fully automated CI/CD pipeline and deploy applications to a Kubernetes cluster with ease.

## Directory Structure

### Infra-Code-Terraform
- **azure-aks**: Terraform scripts for provisioning an Azure AKS cluster.
- **azure-gitlab-vm**: Terraform scripts for creating a GitLab VM on Azure.
- **azure-hashicorp-vault-vm**: Terraform scripts for deploying a HashiCorp Vault VM on Azure.

### Kubernetes-Manifests
- **flux-config**: Configuration files for FluxCD, enabling GitOps practices.
- **manifests**:
  - **Backend**: Kubernetes manifests for backend application deployment.
  - **Database**: Kubernetes manifests for database deployment (e.g., stateful sets, services).
  - **Frontend**: Kubernetes manifests for frontend application deployment.

### Source-Code-Build
- **backend**: Source code and Dockerfile for the backend application.
- **frontend**: Source code and Dockerfile for the frontend application.

## Prerequisites

- Foundational understanding of cloud computing concepts, particularly Azure services, Terraform, and GitLab CI/CD pipelines.
- Familiarity with Kubernetes and containerization principles.
- Access to an Azure subscription with appropriate permissions to create resources and manage secrets.
- Basic understanding of networking concepts and security principles.

For detailed step-by-step instructions and explanations, please refer to my accompanying [blog](https://medium.com/@amanpathakdevops/advanced-end-to-end-devsecops-kubernetes-three-tier-project-using-azure-aks-fluxcd-prometheus-cca3c5e61953) post.

## Conclusion

My project aims to simplify the deployment process and enhance DevOps practices by leveraging modern cloud technologies and best practices. With the provided resources and guidance, you'll be able to accelerate your application deployment process and ensure a reliable and scalable infrastructure.

## License

This project is licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).
