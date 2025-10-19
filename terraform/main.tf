# BlackLoyal Infrastructure Configuration for Timeweb Cloud
# This configuration uses existing server and sets up DNS + Security

# Server module (uses existing server)
module "server" {
  source = "./modules/timeweb/server"

  server_id       = var.server_id
  ssh_key_name    = var.ssh_key_name
  ssh_public_key  = var.ssh_public_key
  ssh_private_key = var.ssh_private_key
  domain          = var.domain
}

# DNS module
module "dns" {
  source = "./modules/timeweb/dns"

  domain_name = var.domain
  server_ip   = module.server.server_ip

  depends_on = [module.server]
}

# Security module
module "security" {
  source = "./modules/timeweb/security"

  firewall_name = "${var.project_name}-firewall"
  server_id     = module.server.server_id

  depends_on = [module.server]
}