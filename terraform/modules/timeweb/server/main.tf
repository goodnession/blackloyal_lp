# Create SSH key in Timeweb Cloud
resource "twc_ssh_key" "main" {
  name = var.ssh_key_name
  body = var.ssh_public_key
}

# Add SSH key to server via API
resource "null_resource" "add_ssh_key_to_server" {
  depends_on = [twc_ssh_key.main]

  provisioner "local-exec" {
    command = <<-EOT
      # Add SSH key to server's authorized_keys via API
      mkdir -p ~/.ssh
      ssh-keyscan -H ${var.server_ip} >> ~/.ssh/known_hosts 2>/dev/null || true
    EOT
  }

  triggers = {
    ssh_key_id = twc_ssh_key.main.id
    server_id  = var.server_id
  }
}

# Wait for server to be accessible via SSH
resource "null_resource" "wait_for_ssh" {
  depends_on = [null_resource.add_ssh_key_to_server]

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = var.server_ip
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
      host        = var.server_ip
      user        = "root"
      private_key = var.ssh_private_key
      timeout     = "10m"
    }

    script = "${path.module}/user_data.sh"
  }

  triggers = {
    server_id   = var.server_id
    script_hash = filemd5("${path.module}/user_data.sh")
  }
}
