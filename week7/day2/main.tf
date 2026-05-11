terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

# Security Group
resource "aws_security_group" "karthik_sg" {
  name        = "karthik-terraform-sg"
  description = "Security group for Karthik EC2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "karthik-terraform-sg"
  }
}

# EC2 Instance
resource "aws_instance" "karthik_ec2" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.karthik_sg.id]
  key_name               = "karthik-devops-key"

  tags = {
    Name = "karthik-terraform-ec2"
  }
}

# Elastic IP
resource "aws_eip" "karthik_eip" {
  instance = aws_instance.karthik_ec2.id

  tags = {
    Name = "karthik-terraform-eip"
  }
}
