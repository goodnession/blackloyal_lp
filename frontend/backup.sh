#!/bin/bash

# ========================================
# BlackLoyal Backup Script
# ========================================
# This script creates backups of:
# - Application files
# - Environment configuration
# - Docker volumes
# - Traefik certificates
# ========================================

set -e

# Configuration
BACKUP_DIR="/opt/backups/blackloyal"
APP_DIR="/opt/blackloyal"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="blackloyal_backup_${TIMESTAMP}"
RETENTION_DAYS=30

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Functions
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Create backup directory
log_info "Creating backup directory..."
mkdir -p "${BACKUP_DIR}/${BACKUP_NAME}"

# Backup application files
log_info "Backing up application files..."
if [ -d "$APP_DIR" ]; then
    tar -czf "${BACKUP_DIR}/${BACKUP_NAME}/application.tar.gz" \
        -C "$APP_DIR" \
        --exclude='node_modules' \
        --exclude='.git' \
        --exclude='.nuxt' \
        --exclude='.output' \
        .
    log_info "Application files backed up successfully"
else
    log_error "Application directory not found: $APP_DIR"
    exit 1
fi

# Backup environment files
log_info "Backing up environment configuration..."
if [ -f "${APP_DIR}/.env.production" ]; then
    cp "${APP_DIR}/.env.production" "${BACKUP_DIR}/${BACKUP_NAME}/.env.production"
    log_info "Environment configuration backed up"
else
    log_warn "No .env.production file found"
fi

# Backup Docker volumes
log_info "Backing up Docker volumes..."
docker run --rm \
    -v traefik-certs:/data \
    -v "${BACKUP_DIR}/${BACKUP_NAME}":/backup \
    alpine tar -czf /backup/traefik-certs.tar.gz -C /data .
log_info "Docker volumes backed up"

# Backup Docker Compose configuration
log_info "Backing up Docker Compose files..."
if [ -f "${APP_DIR}/docker-compose.prod.yml" ]; then
    cp "${APP_DIR}/docker-compose.prod.yml" "${BACKUP_DIR}/${BACKUP_NAME}/docker-compose.prod.yml"
fi

# Create backup info file
log_info "Creating backup info file..."
cat > "${BACKUP_DIR}/${BACKUP_NAME}/backup_info.txt" << EOF
Backup Information
==================
Date: $(date)
Hostname: $(hostname)
Backup Name: ${BACKUP_NAME}
Application Directory: ${APP_DIR}

Included in this backup:
- Application files (application.tar.gz)
- Environment configuration (.env.production)
- Docker volumes (traefik-certs.tar.gz)
- Docker Compose configuration (docker-compose.prod.yml)

To restore this backup:
1. Extract application.tar.gz to ${APP_DIR}
2. Copy .env.production to ${APP_DIR}
3. Extract traefik-certs.tar.gz to Docker volume
4. Run: docker-compose -f docker-compose.prod.yml up -d
EOF

# Calculate backup size
BACKUP_SIZE=$(du -sh "${BACKUP_DIR}/${BACKUP_NAME}" | cut -f1)
log_info "Backup size: ${BACKUP_SIZE}"

# Create compressed archive of the entire backup
log_info "Creating compressed archive..."
cd "${BACKUP_DIR}"
tar -czf "${BACKUP_NAME}.tar.gz" "${BACKUP_NAME}"
rm -rf "${BACKUP_NAME}"

# Cleanup old backups
log_info "Cleaning up old backups (keeping last ${RETENTION_DAYS} days)..."
find "${BACKUP_DIR}" -name "blackloyal_backup_*.tar.gz" -type f -mtime +${RETENTION_DAYS} -delete
REMAINING_BACKUPS=$(find "${BACKUP_DIR}" -name "blackloyal_backup_*.tar.gz" -type f | wc -l)
log_info "Remaining backups: ${REMAINING_BACKUPS}"

# Final summary
log_info "========================================="
log_info "Backup completed successfully!"
log_info "Backup location: ${BACKUP_DIR}/${BACKUP_NAME}.tar.gz"
log_info "Backup size: ${BACKUP_SIZE}"
log_info "========================================="

exit 0

