#!/bin/bash

INSTANCE_ID="i-0d62dfb4803ab7191"

echo "EC2 Manager 🚀"
echo "1. Start instance"
echo "2. Stop instance"
echo "3. Get instance status"
read -p "Choose an option (1/2/3): " OPTION

if [ "$OPTION" == "1" ]; then
    echo "Starting EC2 instance..."
    aws ec2 start-instances --instance-ids $INSTANCE_ID
    echo "Waiting for instance to run..."
    aws ec2 wait instance-running --instance-ids $INSTANCE_ID
    PUBLIC_IP=$(aws ec2 describe-instances \
      --instance-ids $INSTANCE_ID \
      --query 'Reservations[0].Instances[0].PublicIpAddress' \
      --output text)
    echo "Instance is live at: $PUBLIC_IP"
    echo "SSH: ssh -i ~/karthik-devops-key.pem ubuntu@$PUBLIC_IP"

elif [ "$OPTION" == "2" ]; then
    echo "Stopping EC2 instance..."
    aws ec2 stop-instances --instance-ids $INSTANCE_ID
    echo "Instance stopped! 💤"

elif [ "$OPTION" == "3" ]; then
    echo "Getting instance status..."
    aws ec2 describe-instances \
      --instance-ids $INSTANCE_ID \
      --query 'Reservations[0].Instances[0].[State.Name,PublicIpAddress]' \
      --output table

else
    echo "Invalid option!"
fi
