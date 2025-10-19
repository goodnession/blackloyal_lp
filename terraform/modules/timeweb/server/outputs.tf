output "server_id" {
  description = "ID of the server"
  value       = data.external.server_info.result.id
}

output "server_ip" {
  description = "IP address of the server"
  value       = data.external.server_info.result.ip
}

output "server_name" {
  description = "Name of the server"
  value       = data.external.server_info.result.name
}

output "server_status" {
  description = "Status of the server"
  value       = data.external.server_info.result.status
}

output "ssh_key_id" {
  description = "ID of the SSH key"
  value       = twc_ssh_key.main.id
}
