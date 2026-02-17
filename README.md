🌐 Terraform AWS Infrastructure Project

🚀 Project Overview

This project demonstrates deploying cloud infrastructure on AWS using Terraform, designed for intern-level roles.

It highlights Infrastructure as Code (IaC) best practices and shows your ability to:

Launch EC2 instances with free-tier configuration

Install and configure Nginx web server automatically

Create S3 buckets for storage

Setup Security Groups for SSH & HTTP

Automate infrastructure deployment via GitHub Actions CI/CD

📦 Architecture
EC2 Instance

AMI: Amazon Linux 2

Type: t3.micro (Free Tier)

User Data: Installs Nginx automatically

Security Group: Allows SSH (22) & HTTP (80)

S3 Bucket

Demo bucket for storing files or backups

Created via Terraform

CI/CD Pipeline

GitHub Actions workflow runs automatically:

terraform init

terraform validate

terraform plan

Ensures infrastructure changes are validated before deployment

⚡ Getting Started
Prerequisites

AWS account (Free Tier recommended)

Terraform v1.6.6+

Git installed

Optional: VS Code

Setup Steps

Clone repository:

git clone https://github.com/chetanambalkar329-dot/terraform-cloud-project.git
cd terraform-cloud-project


Set AWS credentials:
Create a temporary IAM user with programmatic access.

setx AWS_ACCESS_KEY_ID "YOUR_ACCESS_KEY"
setx AWS_SECRET_ACCESS_KEY "YOUR_SECRET_KEY"


Initialize Terraform:

terraform init


Plan & deploy infrastructure:

terraform plan
terraform apply -auto-approve


Verify deployment:
Open the EC2 public IP in a browser → Nginx welcome page should appear

⚙️ CI/CD with GitHub Actions

Workflow: .github/workflows/terraform.yml

Steps:

Checkout repository

Setup Terraform environment

Configure AWS credentials securely from GitHub Secrets

Run Terraform commands: init, validate, plan

Ensures automated checks for every push

🧹 Cleanup & Cost Management

To avoid AWS charges:

terraform destroy -auto-approve


Verify EC2 instances, S3 buckets, EBS volumes, and Elastic IPs are removed

Confirm AWS Cost Explorer shows no active resources

💡 Skills Demonstrated

Terraform: provider, resource, output, user_data scripts

AWS services: EC2, S3, Security Groups

Nginx web server installation & configuration
GitHub Actions CI/CD workflow
Free Tier & cost-aware resource management
