variable "twc_token" {
  description = "Timeweb Cloud API token"
  type        = string
  sensitive   = true
}

variable "domain" {
  description = "Domain name for the application"
  type        = string
  default     = "blackloyal.ru"
}

variable "server_id" {
  description = "ID of existing server in Timeweb Cloud"
  type        = string
}

variable "server_ip" {
  description = "IP address of existing server"
  type        = string
}

variable "ssh_private_key" {
  description = "SSH private key content for connecting to server (must already be added to server)"
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "blackloyal"
}