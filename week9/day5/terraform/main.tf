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

resource "aws_security_group" "monitoring_sg" {
  name = "monitoring-sg"

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

  ingress {
    from_port   = 9100
    to_port     = 9100
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
    Name = "monitoring-sg"
  }
}

resource "aws_instance" "monitoring_server" {
  ami                    = "ami-0eab37cfdc33e8e65"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.monitoring_sg.id]
  key_name               = "karthik-devops-key"

  tags = {
    Name = "karthik-monitoring-server"
  }
}

resource "aws_eip" "monitoring_eip" {
  instance = aws_instance.monitoring_server.id
}
