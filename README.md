# aws-three-tier-architecture
Production-grade 3-tier architecture on AWS using ALB, Auto Scaling (EC2), and RDS with high availability and secure networking.
# AWS Three-Tier Architecture Deployment

I built a production-grade, highly available 3-tier web application on AWS.

## 🚀 Architecture Overview

The architecture includes:
- Application Load Balancer (ALB) deployed in public subnets
- EC2 Auto Scaling Group in private subnets across multiple Availability Zones
- Amazon RDS MySQL database with Multi-AZ deployment for high availability

## ⚙️ Key Features

- High availability and fault tolerance across multiple AZs
- Auto Scaling to handle dynamic traffic
- Secure architecture using private subnets and security groups
- Automated provisioning using EC2 user data scripts
- Load balancer health checks to ensure traffic is routed only to healthy instances

## 🛠️ Technologies Used

- AWS EC2, ALB, Auto Scaling Group
- Amazon RDS (MySQL)
- VPC, Subnets, Security Groups, NAT Gateway
- Apache, PHP

## 📌 Learning Outcomes

- Designed a highly available and fault-tolerant system
- Implemented secure networking using private subnets
- Debugged real-world issues like ALB health check failures and connectivity problems
- Gained hands-on experience with AWS core services

## ⚠️ Note

Database connectivity is configured but requires further debugging for full integration.

## 📸 Screenshots

### Application Load Balancer Output
![App Output](screenshots/app.png)

### Target Group Health Status
![Target Health](screenshots/health.png)
