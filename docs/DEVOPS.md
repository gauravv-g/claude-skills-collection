# DevOps Guide

This guide covers DevOps and infrastructure-related features of the Claude Skills Collection.

## Overview

The collection includes 40+ DevOps-focused skills covering:

- **Container Orchestration**: Docker, Kubernetes, Helm
- **Infrastructure as Code**: Terraform, Terragrunt, Ansible
- **CI/CD**: GitHub Actions, GitLab CI, Jenkins, Azure Pipelines
- **Monitoring**: Prometheus, Grafana, Loki, Fluent Bit
- **Development Environments**: DevContainers, Makefiles, Bash scripts

## Quick Start

### Docker Setup

```bash
# Generate a Dockerfile
/auto generate a Dockerfile for this Node.js application

# Validate the Dockerfile
/auto validate the Dockerfile for security and best practices
```

### Kubernetes Setup

```bash
# Generate Kubernetes manifests
/auto create Kubernetes deployment and service manifests

# Validate the manifests
/auto validate the Kubernetes manifests
```

### CI/CD Setup

```bash
# Create GitHub Actions workflow
/auto create a comprehensive CI/CD pipeline with GitHub Actions

# Validate the workflow
/auto validate the GitHub Actions workflow
```

## Container Orchestration

### Docker

#### Generate Dockerfile

```bash
/auto generate an optimized multi-stage Dockerfile
```

#### Validate Dockerfile

```bash
/auto validate the Dockerfile for security issues
```

#### Best Practices

- Use multi-stage builds
- Minimize image size
- Use non-root users
- Scan for vulnerabilities
- Use specific version tags

### Kubernetes

#### Generate Manifests

```bash
# Deployment
/auto create a Kubernetes deployment with 3 replicas

# Service
/auto create a Kubernetes service with load balancer

# ConfigMap
/auto create a Kubernetes ConfigMap for configuration

# Ingress
/auto create a Kubernetes Ingress for routing
```

#### Validate Manifests

```bash
/auto validate the Kubernetes manifests
```

#### Debug Issues

```bash
/auto debug the Kubernetes pod CrashLoopBackOff issue
```

### Helm

#### Generate Chart

```bash
/auto create a Helm chart for the application
```

#### Validate Chart

```bash
/auto validate the Helm chart
```

## Infrastructure as Code

### Terraform

#### Generate Configuration

```bash
# Generate Terraform configuration
/auto generate Terraform configuration for AWS infrastructure

# Validate configuration
/auto validate the Terraform configuration
```

#### Best Practices

- Use modules for reusability
- Implement state management
- Use remote state
- Implement secrets management
- Use workspaces for environments

### Terragrunt

#### Generate Configuration

```bash
/auto generate Terragrunt configuration for multi-environment setup
```

#### Validate Configuration

```bash
/auto validate the Terragrunt configuration
```

### Ansible

#### Generate Playbook

```bash
/auto generate an Ansible playbook for server provisioning
```

#### Validate Playbook

```bash
/auto validate the Ansible playbook
```

## CI/CD

### GitHub Actions

#### Generate Workflow

```bash
# CI workflow
/auto create a GitHub Actions CI workflow

# CD workflow
/auto create a GitHub Actions CD workflow

# Complete pipeline
/auto create a comprehensive CI/CD pipeline
```

#### Validate Workflow

```bash
/auto validate the GitHub Actions workflow
```

### GitLab CI

#### Generate Pipeline

```bash
/auto create a GitLab CI pipeline with stages and jobs
```

#### Validate Pipeline

```bash
/auto validate the GitLab CI pipeline
```

### Jenkins

#### Generate Pipeline

```bash
/auto create a Jenkinsfile for CI/CD pipeline
```

#### Validate Pipeline

```bash
/auto validate the Jenkinsfile
```

### Azure Pipelines

#### Generate Pipeline

```bash
/auto create an Azure Pipelines YAML pipeline
```

#### Validate Pipeline

```bash
/auto validate the Azure Pipelines YAML
```

## Monitoring & Logging

### Prometheus

#### Generate Queries

```bash
# Generate PromQL query
/auto generate a PromQL query for request rate

# Generate alerting rule
/auto generate a PromQL alerting rule for high error rate
```

#### Validate Queries

```bash
/auto validate the PromQL queries
```

### Grafana Loki

#### Generate Config

```bash
/auto generate a Loki config for log aggregation
```

### Fluent Bit

#### Generate Config

```bash
# Generate Fluent Bit config
/auto generate a Fluent Bit config for log collection

# Validate config
/auto validate the Fluent Bit config
```

## Development Environments

### DevContainers

#### Setup DevContainer

```bash
/auto create a devcontainer with Python and Node.js tooling
```

### Makefiles

#### Generate Makefile

```bash
/auto generate a Makefile with build, test, and deploy targets
```

#### Validate Makefile

```bash
/auto validate the Makefile
```

### Bash Scripts

#### Generate Script

```bash
/auto generate a bash script for automated deployment
```

#### Validate Script

```bash
/auto validate the bash script via ShellCheck
```

## Best Practices

### 1. Infrastructure as Code

- Use version control for all infrastructure
- Implement proper state management
- Use modules for reusability
- Document infrastructure decisions

### 2. CI/CD

- Automate everything possible
- Implement proper testing
- Use environment-specific configurations
- Implement proper rollback procedures

### 3. Monitoring

- Monitor everything important
- Set up proper alerting
- Use dashboards for visualization
- Implement proper logging

### 4. Security

- Scan images for vulnerabilities
- Implement proper secrets management
- Use least privilege access
- Implement proper network security

### 5. Performance

- Optimize image sizes
- Use proper caching strategies
- Implement proper scaling
- Monitor resource usage

## Common Patterns

### Pattern 1: Multi-Stage Docker Build

```bash
/auto generate a multi-stage Docker build with builder and runtime stages
```

### Pattern 2: Kubernetes Deployment

```bash
/auto create a Kubernetes deployment with ConfigMap and Secret
```

### Pattern 3: CI/CD Pipeline

```bash
/auto create a complete CI/CD pipeline with testing and deployment
```

### Pattern 4: Infrastructure Provisioning

```bash
/auto generate Terraform configuration for multi-environment setup
```

### Pattern 5: Monitoring Setup

```bash
/auto set up Prometheus and Grafana for application monitoring
```

## Troubleshooting

### Docker Issues

```bash
# Debug Docker build issues
/auto debug the Docker build failure

# Optimize Docker image size
/auto optimize the Docker image size
```

### Kubernetes Issues

```bash
# Debug pod issues
/auto debug the Kubernetes pod CrashLoopBackOff

# Debug service issues
/auto debug the Kubernetes service connectivity
```

### CI/CD Issues

```bash
# Debug pipeline failures
/auto debug the GitHub Actions workflow failure

# Fix deployment issues
/auto fix the deployment failure in the pipeline
```

## Resources

### Documentation

- [Docker Documentation](https://docs.docker.com/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)
- [Terraform Documentation](https://www.terraform.io/docs)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

### Tools

- [Docker Hub](https://hub.docker.com/)
- [Kubernetes Dashboard](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/)
- [Terraform Registry](https://registry.terraform.io/)
- [GitHub Marketplace](https://github.com/marketplace)

### Communities

- [Docker Community](https://www.docker.com/community)
- [Kubernetes Community](https://kubernetes.io/community/)
- [Terraform Community](https://www.terraform.io/community)
- [DevOps Community](https://www.devops.com/)

## Need Help?

- 📧 [Email Support](mailto:support@example.com)
- 💬 [Discord Community](https://discord.gg/)
- 📝 [GitHub Issues](https://github.com/gauravv-g/claude-skills-collection/issues)

---

**Happy Deploying! 🚀**
