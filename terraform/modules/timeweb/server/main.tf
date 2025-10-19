# Wait for server to be accessible via SSH
resource "null_resource" "wait_for_ssh" {
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

  triggers = {
    server_ip = var.server_ip
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
