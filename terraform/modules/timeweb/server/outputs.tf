output "server_id" {
  description = "ID of the server"
  value       = var.server_id
}

output "server_ip" {
  description = "IP address of the server"
  value       = var.server_ip
}

output "ssh_key_id" {
  description = "ID of the SSH key"
  value       = twc_ssh_key.main.id
}
