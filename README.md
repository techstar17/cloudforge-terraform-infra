# 🚀 CloudForge Terraform Infrastructure

A production-style Infrastructure as Code (IaC) project built with **Terraform + AWS + Docker**.  
This project deploys a scalable cloud environment including EC2, S3, Security Groups, and automated container setup.

---

## 📌 Architecture Overview

- 🖥️ EC2 Instance (Ubuntu / Amazon Linux)
- 🐳 Docker installed automatically via user data script
- 🌐 Nginx container exposed on port 80
- 🪣 S3 Bucket with versioning enabled
- 🔐 Security Group allowing SSH, HTTP, and app traffic (3000)

---

## ⚙️ Technologies Used

- Terraform (Infrastructure as Code)
- AWS (EC2, S3, Security Groups, Key Pairs)
- Docker
- Bash scripting
- Git & GitHub

---

## 🚀 Features

- Fully automated infrastructure provisioning
- Secure SSH access via key pair
- Web server deployed using Docker (Nginx)
- S3 bucket with versioning enabled
- Clean and modular Terraform structure

---

## 📂 Project Structure
