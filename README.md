Terraform Cloud Project - Internship Demo
Project Overview

This project demonstrates the deployment of a basic cloud infrastructure using Terraform on AWS. The main goal is to showcase hands-on skills in:

EC2 instance creation and management

Nginx web server setup

Security group configuration (SSH and HTTP)

S3 bucket provisioning

GitHub Actions CI/CD integration for Terraform

This project is designed for interns and beginners to practice cloud infrastructure automation with Terraform and understand basic DevOps concepts.

Project Architecture

EC2 Instance

Amazon Linux 2 AMI

Instance type: t3.micro (Free Tier)

Nginx installed via Terraform user-data script

Security group allows SSH (22) and HTTP (80)

S3 Bucket

Demo bucket created via Terraform

Used for storing static assets or backups

CI/CD Pipeline

GitHub Actions workflow automatically runs Terraform init, validate, plan on push

Debug step included to verify AWS credentials

Getting Started
Prerequisites

AWS account (Free Tier recommended)

Terraform v1.6.6+ installed

Git installed

Optional: VS Code / any IDE

Setup Instructions

Clone this repository:

git clone https://github.com/chetanambalkar329-dot/terraform-cloud-project.git
cd terraform-cloud-project


Configure AWS credentials (temporary IAM user with programmatic access):

setx AWS_ACCESS_KEY_ID "YOUR_ACCESS_KEY"
setx AWS_SECRET_ACCESS_KEY "YOUR_SECRET_KEY"


Initialize Terraform:

terraform init


Plan and apply infrastructure:

terraform plan
terraform apply -auto-approve


Verify deployment:

Open the public IP of the EC2 instance in browser → Nginx welcome page should load

GitHub Actions CI/CD

The project includes a CI/CD workflow in .github/workflows/terraform.yml which:

Checks out the repository

Sets up Terraform

Configures AWS credentials

Runs terraform init, terraform validate, and terraform plan

Note: Secrets for AWS credentials must be configured in GitHub repository settings.

Screenshots / Proof of Work

Terraform Apply Output:


EC2 Instance Running Nginx:


GitHub Actions CI/CD Run:


Replace these placeholders with your actual screenshots.

Cleanup / Cost Management

To avoid any charges on AWS:

Destroy Terraform resources:

terraform destroy -auto-approve


Manually check AWS Console for any leftover resources:

EC2 instances, EBS volumes, S3 buckets, Elastic IPs

Ensure AWS Cost Explorer shows 0 active resources.

Skills Demonstrated

Terraform basics: provider, resource, output

AWS core services: EC2, S3, Security Groups

Nginx installation using Terraform user_data

GitHub Actions CI/CD pipeline setup

Infrastructure-as-Code best practices

Author

Chetan Ambalkar

GitHub Profile

Intern-level project for cloud and DevOps skill showcase

Agar chaho, mai iska ready-to-use Markdown version bana doon jisme screenshots ke liye placeholder images aur badges bhi add hon, jise tum directly GitHub me dal sako.

Kya mai wo bana doon?

toda accha do aur me screenshot nahi dal raha to vo hata do

Perfect. Mai tumhare liye ek clean, professional, human-like README bana deta hoon screenshots ke bina, bas textual explanation aur steps ke saath. Tum ise directly GitHub pe dal sakte ho.

Terraform Cloud Infrastructure Project
Project Overview

This project demonstrates deploying a simple cloud infrastructure on AWS using Terraform. It is designed to showcase hands-on skills in:

Launching and managing EC2 instances

Installing and configuring Nginx web server

Setting up Security Groups for SSH and HTTP

Provisioning S3 buckets

Integrating GitHub Actions for Terraform CI/CD

The project is ideal for interns or beginners looking to practice Infrastructure as Code and basic DevOps concepts.

Architecture

EC2 Instance

Amazon Linux 2 AMI

Instance type: t3.micro (Free Tier)

Nginx installed via Terraform user-data script

Security group configured to allow SSH (22) and HTTP (80)

S3 Bucket

Demo bucket created via Terraform

Can be used for storing static assets or backups

CI/CD Pipeline

GitHub Actions workflow runs Terraform commands (init, validate, plan) on every push

Ensures AWS credentials are valid and infrastructure changes are checked automatically

Getting Started
Prerequisites

AWS account (Free Tier recommended)

Terraform v1.6.6 or higher

Git installed

Optional: VS Code or any code editor

Setup Instructions

Clone the repository:

git clone https://github.com/chetanambalkar329-dot/terraform-cloud-project.git
cd terraform-cloud-project


Configure AWS credentials (using temporary IAM user with programmatic access):

setx AWS_ACCESS_KEY_ID "YOUR_ACCESS_KEY"
setx AWS_SECRET_ACCESS_KEY "YOUR_SECRET_KEY"


Initialize Terraform:

terraform init


Plan and deploy infrastructure:

terraform plan
terraform apply -auto-approve


Verify deployment:

Open the public IP of the EC2 instance in a browser → Nginx welcome page should load

CI/CD with GitHub Actions

The project contains a GitHub Actions workflow (.github/workflows/terraform.yml) that:

Checks out the repository

Sets up Terraform

Configures AWS credentials

Runs terraform init, terraform validate, and terraform plan

Note: AWS credentials must be stored as GitHub Secrets to keep them secure.

Cleanup & Cost Management

To avoid unwanted charges on AWS:

Destroy all Terraform-managed resources:

terraform destroy -auto-approve


Check AWS Console manually for any leftover resources:

EC2 instances, EBS volumes, S3 buckets, Elastic IPs

Verify AWS Cost Explorer to ensure 0 active resources.

Skills Demonstrated

Terraform basics: providers, resources, outputs

AWS services: EC2, S3, Security Groups

Web server setup using user_data

GitHub Actions CI/CD pipeline setup

Infrastructure-as-Code best practices
