resource "aws_security_group" "this" {
  name        = "${var.environment}-sg"
  description = "Security group for ${var.environment}"

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
}

resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.this.id]
  key_name               = var.key_name

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install nginx -y
    systemctl start nginx
    systemctl enable nginx
    echo "<h1>Hello from ${var.environment} - Deployed by Terraform!</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name        = "${var.environment}-ec2"
    Environment = var.environment
  }
}

resource "aws_eip" "this" {
  instance = aws_instance.this.id
}
