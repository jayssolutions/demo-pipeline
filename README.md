# DevOps React Assessment Project

This repository contains a full CI/CD, IaC, and deployment setup for a React application.

## Prerequisites
1. Setup S3 bucket (`my-devops-tf-state-bucket`) and DynamoDB lock table (`terraform-locks`) in AWS.
2. Add repository secrets in GitHub Actions:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `EC2_SSH_PRIVATE_KEY`

## Workflows
- **CI/CD Pipeline (`ci-cd.yml`):** Runs linting, tests, provisions AWS infrastructure using Terraform 1.10+, and deploys the React application via Nginx using Ansible.
- **Destroy Infrastructure (`destroy.yml`):** Manual workflow trigger to destroy provisioned AWS resources.
