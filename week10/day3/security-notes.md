# AWS Security - Day 3

## IAM Best Practices
- Principle of Least Privilege
- Never use root account
- Use MFA on root

## Security Groups
- SSH restricted to 162.218.220.218/32
- Port 80/443 open to world (needed)

## S3 Security
- Public access blocked on karthik-devops-bucket

## CloudTrail
- Enabled: karthik-devops-trail
- Logs to: karthik-cloudtrail-2026
- Records all AWS API calls
