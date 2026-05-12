import boto3
import json

def get_secret():
    client = boto3.client('secretsmanager', region_name='us-east-2')
    
    response = client.get_secret_value(
        SecretId='karthik-devops/db-password'
    )
    
    secret = json.loads(response['SecretString'])
    return secret

# Get secret
secret = get_secret()
print(f"Username: {secret['username']}")
print(f"Password retrieved securely!")
# Never print password in real code!
