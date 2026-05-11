variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name of EC2 instance"
}

variable "environment" {
  description = "Environment name"
  default     = "learning"
}
