variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name (must be globally unique)"
  type        = string

  # safer naming pattern for production
  default     = "cloudforge-tfstate-festus-2026"
}

variable "ami_id" {
  description = "Ubuntu AMI ID for EC2 instance"
  type        = string

  # Ubuntu 22.04 LTS (safe default for Docker + DevOps)
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "public_key_path" {
  description = "Path to SSH public key file"
  type        = string
  default     = "C:/Users/HP/.ssh/id_rsa.pub"
}