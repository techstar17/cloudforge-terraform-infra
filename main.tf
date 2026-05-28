# ─────────────────────────────
# VPC (DEFAULT)
# ─────────────────────────────
data "aws_vpc" "default" {
  default = true
}

# ─────────────────────────────
# S3 BUCKET
# ─────────────────────────────
resource "aws_s3_bucket" "app_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "CloudForge-Bucket"
    Environment = "Dev"
    Project     = "terraform-aws-infra"
  }
}

resource "aws_s3_bucket_versioning" "app_bucket_versioning" {
  bucket = aws_s3_bucket.app_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# ─────────────────────────────
# SECURITY GROUP
# ─────────────────────────────
resource "aws_security_group" "app_sg" {
  name        = "cloudforge-sg"
  description = "Allow SSH, HTTP, and App traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "App Port"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cloudforge-sg"
  }
}

# ─────────────────────────────
# KEY PAIR
# ─────────────────────────────
resource "aws_key_pair" "app_key" {
  key_name   = "cloudforge-key"
  public_key = file(var.public_key_path)
}

# ─────────────────────────────
# EC2 INSTANCE
# ─────────────────────────────
resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name               = aws_key_pair.app_key.key_name
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data = file("scripts/install.sh")

  tags = {
    Name        = "CloudForge-Server"
    Environment = "Dev"
    Project     = "terraform-aws-infra"
  }
}