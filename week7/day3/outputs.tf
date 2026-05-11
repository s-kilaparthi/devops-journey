output "ec2_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.karthik_ec2.public_ip
}

output "s3_bucket_name" {
  description = "Name of S3 bucket"
  value       = aws_s3_bucket.karthik_bucket.id
}

output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.karthik_ec2.id
}
