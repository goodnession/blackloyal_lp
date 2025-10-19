# Get existing server
data "twc_server" "main" {
  id = var.server_id
}

# Create SSH key for access
resource "twc_ssh_key" "main" {
  name       = var.ssh_key_name
  public_key = var.ssh_public_key
}

# Attach SSH key to existing server
resource "twc_server_ssh_key" "main" {
  server_id  = data.twc_server.main.id
  ssh_key_id = twc_ssh_key.main.id
}

# Wait for server to be accessible via SSH
resource "null_resource" "wait_for_ssh" {
  depends_on = [twc_server_ssh_key.main]
  
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = data.twc_server.main.ip
      user        = "root"
      private_key = var.ssh_private_key
      timeout     = "5m"
    }
    
    inline = [
      "echo 'Server is ready'"
    ]
  }
}

# Run initial server setup
resource "null_resource" "server_setup" {
  depends_on = [null_resource.wait_for_ssh]
  
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = data.twc_server.main.ip
      user        = "root"
      private_key = var.ssh_private_key
      timeout     = "10m"
    }
    
    script = "${path.module}/user_data.sh"
  }
  
  triggers = {
    server_id = data.twc_server.main.id
  }
}
