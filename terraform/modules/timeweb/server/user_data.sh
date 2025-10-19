#!/bin/bash

# Update system
apt-get update
apt-get upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm get-docker.sh

# Install Docker Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Install additional tools
apt-get install -y curl wget git htop ufw fail2ban

# Configure firewall
ufw allow 22
ufw allow 80
ufw allow 443
ufw --force enable

# Configure fail2ban
systemctl enable fail2ban
systemctl start fail2ban

# Create application directory
mkdir -p /opt/blackloyal
cd /opt/blackloyal

# Create docker network
docker network create traefik

# Create log directories
mkdir -p /var/log/traefik
mkdir -p /var/log/blackloyal

# Set up log rotation
cat > /etc/logrotate.d/blackloyal << 'LOGROTATE_EOF'
/var/log/blackloyal/*.log {
    daily
    missingok
    rotate 52
    compress
    delaycompress
    notifempty
    create 644 root root
    postrotate
        docker-compose -f /opt/blackloyal/docker-compose.prod.yml restart app
    endscript
}
LOGROTATE_EOF

# Create systemd service for auto-start
cat > /etc/systemd/system/blackloyal.service << 'SERVICE_EOF'
[Unit]
Description=BlackLoyal Application
Requires=docker.service
After=docker.service

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=/opt/blackloyal
ExecStart=/usr/local/bin/docker-compose -f docker-compose.prod.yml up -d
ExecStop=/usr/local/bin/docker-compose -f docker-compose.prod.yml down
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target
SERVICE_EOF

# Enable service
systemctl enable blackloyal.service

# Create basic application structure
cat > /opt/blackloyal/docker-compose.prod.yml << 'DOCKER_COMPOSE_EOF'
version: '3.8'
services:
  app:
    image: nginx:alpine
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf:ro
    restart: unless-stopped
DOCKER_COMPOSE_EOF

# Create basic nginx config
cat > /opt/blackloyal/nginx.conf << 'NGINX_EOF'
events {
    worker_connections 1024;
}

http {
    server {
        listen 80;
        server_name _;
        
        location / {
            return 200 'BlackLoyal Landing Page - Infrastructure Ready!';
            add_header Content-Type text/plain;
        }
        
        location /api/health {
            return 200 '{"status":"ok","message":"Infrastructure ready"}';
            add_header Content-Type application/json;
        }
    }
}
NGINX_EOF

# Start basic application
cd /opt/blackloyal
docker-compose -f docker-compose.prod.yml up -d

echo "Server setup completed successfully!"
echo "Domain: ${domain}"
echo "Application deployed and running!"
echo "Health check: curl http://localhost/api/health"
