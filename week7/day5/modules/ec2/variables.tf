variable "ami_id" {
  description = "AMI ID"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "environment" {
  description = "Environment name"
}

variable "key_name" {
  description = "SSH key pair name"
}
