provider "aws" {
  region = "ap-south-1"
}

# ----------------------------
# Security Group
# ----------------------------
resource "aws_security_group" "web_sg" {
  name        = "web-security-group"
  description = "Allow SSH and HTTP"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ----------------------------
# EC2 Instance
# ----------------------------
resource "aws_instance" "web" {
  ami                         = "ami-0f5ee92e2d63afc18"
  instance_type               = "t3.micro"
  key_name                    = "cloud-key"
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "Terraform-Web-Server"
  }
}

# ----------------------------
# S3 Bucket
# ----------------------------
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "intern-demo-bucket-cheta-2004"
}

# ----------------------------
# Output
# ----------------------------
output "public_ip" {
  value = aws_instance.web.public_ip
}


