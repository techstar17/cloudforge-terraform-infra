# ─────────────────────────────
# EC2 OUTPUTS
# ─────────────────────────────
output "ec2_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.app_server.public_dns
}

# ─────────────────────────────
# S3 OUTPUT
# ─────────────────────────────
output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.app_bucket.id
}

output "s3_bucket_arn" {
  description = "S3 bucket ARN"
  value       = aws_s3_bucket.app_bucket.arn
}

# ─────────────────────────────
# SECURITY GROUP OUTPUT
# ─────────────────────────────
output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.app_sg.id
}

# ─────────────────────────────
# KEY PAIR OUTPUT
# ─────────────────────────────
output "key_pair_name" {
  description = "EC2 Key Pair Name"
  value       = aws_key_pair.app_key.key_name
}