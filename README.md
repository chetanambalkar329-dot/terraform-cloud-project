# 🌐 Terraform AWS Infrastructure Project
[![Terraform](https://img.shields.io/badge/Terraform-1.6.6-blue?logo=terraform)](https://www.terraform.io/) [![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws)](https://aws.amazon.com/) [![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-blueviolet?logo=github-actions)](https://github.com/features/actions)

## 🚀 Project Overview
This project demonstrates **deploying AWS infrastructure with Terraform**. Designed for **intern-level roles**, it covers:
- EC2 instance launch (Free Tier)  
- Automatic Nginx installation  
- S3 bucket creation  
- Security Group configuration  
- CI/CD via GitHub Actions  

## 📦 Architecture
**EC2 Instance**
- AMI: Amazon Linux 2  
- Type: t3.micro  
- Security Group: SSH (22) & HTTP (80)  
- User Data: installs Nginx  

**S3 Bucket**
- Demo bucket for storage  

**CI/CD Workflow**
- GitHub Actions automates: `terraform init`, `validate`, `plan`  

## ⚡ Getting Started

### Prerequisites
- AWS account (Free Tier recommended)  
- Terraform v1.6.6+  
- Git  

### Setup Steps
1. Clone repo:
```bash
git clone https://github.com/chetanambalkar329-dot/terraform-cloud-project.git
cd terraform-cloud-project

Set AWS credentials:
setx AWS_ACCESS_KEY_ID "YOUR_ACCESS_KEY"
setx AWS_SECRET_ACCESS_KEY "YOUR_SECRET_KEY"

Initialize Terraform:
terraform init

Plan & apply:

terraform plan
terraform apply -auto-approve

Verify: Open EC2 public IP → Nginx welcome page

⚙️ CI/CD (GitHub Actions)

Workflow: .github/workflows/terraform.yml
Steps:
Checkout repo
Setup Terraform
Configure AWS credentials from Secrets
Run: init, validate, plan

🧹 Cleanup & Cost Management

To avoid AWS charges:
terraform destroy -auto-approve
Verify no EC2 instances, S3 buckets, or other resources remain.

💡 Skills Demonstrated

Terraform: provider, resource, output, user_data scripts
AWS: EC2, S3, Security Groups
Nginx installation & config
GitHub Actions CI/CD
Free Tier & cost-aware resource management
