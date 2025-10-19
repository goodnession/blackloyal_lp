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

# Set up log rotation (will be updated during deployment)
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
        # Will be updated during deployment
        echo "Log rotation completed"
    endscript
}
LOGROTATE_EOF

# Create systemd service for auto-start (will be updated during deployment)
cat > /etc/systemd/system/blackloyal.service << 'SERVICE_EOF'
[Unit]
Description=BlackLoyal Application
Requires=docker.service
After=docker.service

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=/opt/blackloyal/frontend
ExecStart=/bin/true
ExecStop=/bin/true
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target
SERVICE_EOF

# Enable service (will be reconfigured during deployment)
systemctl enable blackloyal.service

# Create application directory structure (no containers yet)
mkdir -p /opt/blackloyal/frontend
cd /opt/blackloyal/frontend

# Create basic .env.production template
cat > .env.production << 'ENV_EOF'
# Environment variables will be set during deployment
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
ENV_EOF

# Create placeholder docker-compose.yml for reference
cat > docker-compose.yml << 'DOCKER_COMPOSE_EOF'
# This file will be replaced during deployment
# Placeholder to prevent errors
version: '3.8'
services:
  placeholder:
    image: hello-world
    restart: "no"
DOCKER_COMPOSE_EOF

echo "Server setup completed successfully!"
echo "Domain: ${domain}"
echo "Infrastructure ready for application deployment!"
echo "Run deployment script to start the application."
