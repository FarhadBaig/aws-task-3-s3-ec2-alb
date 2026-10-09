#!/bin/bash

apt-get update -y
apt-get install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>AWS Task 3</title>
</head>
<body>
    <h1>Hello from EC2 Server 1</h1>
    <p>Application Load Balancer Test</p>
    <p>Server: EC2-1</p>
</body>
</html>
EOF
