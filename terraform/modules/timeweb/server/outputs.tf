output "server_id" {
  description = "ID of the server"
  value       = data.twc_server.main.id
}

output "server_ip" {
  description = "IP address of the server"
  value       = data.twc_server.main.ip
}

output "server_name" {
  description = "Name of the server"
  value       = data.twc_server.main.name
}

output "ssh_key_id" {
  description = "ID of the SSH key"
  value       = twc_ssh_key.main.id
}
