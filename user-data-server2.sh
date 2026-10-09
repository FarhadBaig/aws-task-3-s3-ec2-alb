#!/bin/bash
set -eux
apt-get update -y
apt-get install -y nginx
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head><title>EC2 Server 2</title></head>
<body>
<h1>Hello from EC2 Server 2</h1>
<p>Application Load Balancer test - Server 2</p>
</body>
</html>
EOF
systemctl enable nginx
systemctl restart nginx
