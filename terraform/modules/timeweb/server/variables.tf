variable "server_id" {
  description = "ID of existing server in Timeweb Cloud"
  type        = string
}

variable "server_ip" {
  description = "IP address of existing server"
  type        = string
}

variable "ssh_key_name" {
  description = "SSH key name for server access"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key content"
  type        = string
  sensitive   = true
}

variable "ssh_private_key" {
  description = "SSH private key content"
  type        = string
  sensitive   = true
}

variable "domain" {
  description = "Domain name for the application"
  type        = string
}

