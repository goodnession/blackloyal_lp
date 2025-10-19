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

output "domain_name" {
  description = "Domain name"
  value       = module.dns.domain_name
}

output "domain" {
  description = "Domain name (alias)"
  value       = var.domain
}

output "firewall_id" {
  description = "ID of the firewall"
  value       = module.security.firewall_id
}

output "server_status" {
  description = "Status of the server"
  value       = module.server.server_status
}
