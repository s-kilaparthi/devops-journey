variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
  default     = "ami-0eab37cfdc33e8e65"
}

variable "bucket_name" {
  description = "S3 bucket name"
  default     = "karthik-terraform-var-2026"
}

variable "environment" {
  description = "Environment name"
  default     = "learning"
}
