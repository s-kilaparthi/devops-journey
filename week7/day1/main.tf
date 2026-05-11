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

resource "aws_s3_bucket" "karthik_terraform_bucket" {
  bucket = "karthik-terraform-bucket-2026"

  tags = {
    Name        = "Karthik Terraform Bucket"
    Environment = "Learning"
  }
}
