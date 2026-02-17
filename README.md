🌟 Terraform AWS Infrastructure Project
Project Overview

This project demonstrates deploying AWS cloud infrastructure using Terraform.
It is designed for internship-level roles to showcase Infrastructure as Code (IaC) and basic DevOps skills.

Key Highlights:

Launching EC2 instances

Installing Nginx web server automatically

Creating S3 buckets for storage

Configuring Security Groups for SSH & HTTP

Automating with GitHub Actions CI/CD

Architecture
EC2 Instance

AMI: Amazon Linux 2

Type: t3.micro (Free Tier)

Nginx installed using Terraform user_data script

Security Group: allows SSH (22) & HTTP (80)

S3 Bucket

Simple demo bucket for storage

Provisioned via Terraform

CI/CD Pipeline

GitHub Actions automatically runs Terraform commands:

init, validate, plan

Ensures infrastructure changes are safe before deployment

Getting Started
Prerequisites

AWS account (Free Tier)

Terraform v1.6.6+

Git installed

Optional: VS Code

Setup Instructions

Clone repository:

git clone https://github.com/chetanambalkar329-dot/terraform-cloud-project.git
cd terraform-cloud-project


Set AWS credentials (temporary IAM user):

setx AWS_ACCESS_KEY_ID "YOUR_ACCESS_KEY"
setx AWS_SECRET_ACCESS_KEY "YOUR_SECRET_KEY"


Initialize Terraform:

terraform init


Plan & Apply Infrastructure:

terraform plan
terraform apply -auto-approve


Verify:
Open EC2 public IP → Nginx welcome page should load

CI/CD with GitHub Actions

Workflow: .github/workflows/terraform.yml

Steps:

Checkout repo

Setup Terraform

Configure AWS credentials (from GitHub Secrets)

Run Terraform: init, validate, plan

Ensures automated checks for every push

Cleanup & Cost Management

To avoid AWS charges:

terraform destroy -auto-approve


Verify EC2, S3, EBS volumes, Elastic IPs manually

Confirm AWS Cost Explorer shows no active resources

Skills Demonstrated

Terraform basics: provider, resource, output

AWS services: EC2, S3, Security Groups

Nginx setup via user_data script

GitHub Actions CI/CD

Free Tier & cost-aware provisioning
