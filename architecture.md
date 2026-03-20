# 🏗️ Architecture Design

This project implements a 3-tier architecture on AWS following best practices for scalability, high availability, and security.

---

## 📌 Architecture Overview

The system is divided into three layers:

### 1️⃣ Presentation Layer (Load Balancer)
- Application Load Balancer (ALB) deployed in public subnets
- Distributes incoming traffic across multiple EC2 instances
- Performs health checks to route traffic only to healthy instances

---

### 2️⃣ Application Layer (EC2 Auto Scaling Group)
- EC2 instances deployed in private subnets across multiple Availability Zones
- Managed by an Auto Scaling Group (ASG)
- Automatically scales in/out based on demand
- Instances are configured using user data scripts

---

### 3️⃣ Data Layer (RDS Database)
- Amazon RDS MySQL database deployed in private subnets
- Multi-AZ enabled for high availability and automatic failover
- Only accessible from EC2 instances via security groups

---

## 🔐 Security Design

- EC2 and RDS are placed in private subnets (no direct internet access)
- ALB is the only public-facing component
- Security groups restrict access:
  - ALB → EC2 (HTTP)
  - EC2 → RDS (MySQL)
- Follows the principle of least privilege

---

## 🌐 Networking Flow

1. User sends request → ALB
2. ALB routes traffic → EC2 instances
3. EC2 processes request → communicates with RDS (if needed)
4. Response sent back → ALB → User

---

## ⚡ High Availability & Fault Tolerance

- EC2 instances distributed across multiple Availability Zones
- RDS Multi-AZ ensures automatic failover
- Auto Scaling replaces unhealthy instances
- ALB routes traffic only to healthy targets

---

## 🚀 Scalability

- Auto Scaling dynamically adjusts number of EC2 instances
- ALB distributes load efficiently
- Architecture supports horizontal scaling

