variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  default = "cloudforge-bucket-festus-2026"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "public_key_path" {
  default = "C:/Users/HP/.ssh/id_rsa.pub"
}