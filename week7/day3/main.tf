terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "karthik_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

resource "aws_instance" "karthik_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "karthik-terraform-ec2"
    Environment = var.environment
  }
}
