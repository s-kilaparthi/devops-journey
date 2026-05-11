#!/bin/bash

echo "Step 1: Creating infrastructure with Terraform..."
cd terraform
terraform init
terraform apply -auto-approve

# Get IP from Terraform output
SERVER_IP=$(terraform output -raw server_ip)
echo "Server IP: $SERVER_IP"

echo "Waiting for EC2 to initialize..."
sleep 60

echo "Step 2: Configuring server with Ansible..."
cd ..

# Create dynamic inventory
cat > inventory.ini << EOF
[webservers]
$SERVER_IP ansible_user=ubuntu ansible_ssh_private_key_file=~/karthik-devops-key.pem

[webservers:vars]
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
EOF

echo "Running Ansible playbook..."
ansible-playbook -i inventory.ini playbook.yml

echo "Done! Visit http://$SERVER_IP"
