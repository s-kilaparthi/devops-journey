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

# Use S3 module for development
module "dev_s3" {
  source      = "./modules/s3"
  bucket_name = "karthik-dev-bucket-2026"
  environment = "development"
}

# Use S3 module for production
module "prod_s3" {
  source      = "./modules/s3"
  bucket_name = "karthik-prod-bucket-2026"
  environment = "production"
}

# Use EC2 module
module "dev_ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-0eab37cfdc33e8e65"
  instance_type = "t3.micro"
  instance_name = "karthik-dev-ec2"
  environment   = "development"
}
