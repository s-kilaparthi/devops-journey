output "server_ip" {
  value = aws_eip.monitoring_eip.public_ip
}
