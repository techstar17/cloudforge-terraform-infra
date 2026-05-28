output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.app_server.public_dns
}

output "s3_bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.app_bucket.arn
}