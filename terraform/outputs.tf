output "server_ip" {
  description = "IP address of the server"
  value       = module.server.server_ip
}

output "server_url" {
  description = "URL of the application"
  value       = "https://${var.domain}"
}

output "ssh_command" {
  description = "SSH command to connect to the server"
  value       = "ssh root@${module.server.server_ip}"
}

output "domain" {
  description = "Domain name"
  value       = var.domain
}

# Disabled outputs - modules are commented out in main.tf
# output "domain_name" {
#   description = "Domain name from DNS module"
#   value       = module.dns.domain_name
# }
#
# output "firewall_id" {
#   description = "ID of the firewall"
#   value       = module.security.firewall_id
# }

