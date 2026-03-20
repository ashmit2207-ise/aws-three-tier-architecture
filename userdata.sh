#!/bin/bash
# Simple and reliable script
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Create simple HTML page
cat > /var/www/html/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Three-Tier Architecture - Working!</title>
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            font-family: Arial, sans-serif;
            padding: 50px;
            text-align: center;
        }
        .container {
            background: rgba(255,255,255,0.1);
            padding: 40px;
            border-radius: 15px;
            backdrop-filter: blur(10px);
            max-width: 800px;
            margin: 0 auto;
        }
        h1 { font-size: 48px; margin: 20px 0; }
        h2 { font-size: 32px; color: #4ade80; }
        p { font-size: 20px; line-height: 1.6; }
        .status { color: #4ade80; font-weight: bold; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🎉 THREE-TIER ARCHITECTURE 🎉</h1>
        <h2>✅ SUCCESSFULLY DEPLOYED!</h2>
        
        <p><strong>Web Server:</strong> <span class="status">✅ RUNNING</span></p>
        <p><strong>Load Balancer:</strong> <span class="status">✅ DISTRIBUTING TRAFFIC</span></p>
        <p><strong>Auto Scaling:</strong> <span class="status">✅ ACTIVE</span></p>
        
        <hr style="border: 1px solid rgba(255,255,255,0.3); margin: 30px 0;">
        
        <p><strong>Architecture Layers:</strong></p>
        <p>📍 Tier 1: Application Load Balancer (You're here!)</p>
        <p>⚙️ Tier 2: EC2 Auto Scaling Group (2 instances across 2 AZs)</p>
        <p>💾 Tier 3: RDS MySQL Multi-AZ Database</p>
        
        <hr style="border: 1px solid rgba(255,255,255,0.3); margin: 30px 0;">
        
        <p style="font-size: 16px; opacity: 0.8;">
            This is a production-grade, highly available architecture<br>
            built on AWS with automatic failover and fault tolerance!
        </p>
    </div>
</body>
</html>
EOF
