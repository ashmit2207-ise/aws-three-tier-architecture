# 🚧 Challenges Faced

During the development of this project, I encountered several real-world issues and resolved them through debugging and analysis.

---

## 1️⃣ ALB Health Check Failures (HTTP 500)

- The Application Load Balancer marked instances as unhealthy
- Root cause: The default health check path (`/`) depended on database connectivity
- Fix:
  - Created a dedicated health endpoint (`/health.php`)
  - Ensured it always returns HTTP 200
- Learning:
  - Health checks should not depend on external services like databases

---

## 2️⃣ Incorrect Target Group Registration

- Instances in the target group did not match running EC2 instances
- Resulted in failed health checks and no traffic routing
- Fix:
  - Deregistered old instances
  - Registered correct instances manually
- Learning:
  - Always verify target group instance mapping

---

## 3️⃣ Private Subnet Access Issues

- Unable to SSH into EC2 instances
- Root cause: Instances were in private subnets with no public IP
- Fix:
  - Learned and implemented access via SSM Session Manager
- Learning:
  - Private subnet improves security but requires proper access mechanisms

---


## 4 Database Connectivity Issues

- Application was unable to connect to RDS database
- Possible causes:
  - Security group misconfiguration
  - Database access restrictions
- Current Status:
  - Infrastructure is correctly configured, but DB integration requires further debugging
- Learning:
  - Secure communication between services depends heavily on correct security group rules

---

## 🧠 Key Takeaways

- Debugging cloud systems requires checking networking, security, and application layers together
- Small misconfigurations can cause major failures
- Understanding architecture is more important than just deployment
