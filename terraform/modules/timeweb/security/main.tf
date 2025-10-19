resource "twc_firewall" "main" {
  name = var.firewall_name

  rules {
    direction = "inbound"
    protocol  = "tcp"
    port      = "22"
    source    = "0.0.0.0/0"
    action    = "allow"
  }

  rules {
    direction = "inbound"
    protocol  = "tcp"
    port      = "80"
    source    = "0.0.0.0/0"
    action    = "allow"
  }

  rules {
    direction = "inbound"
    protocol  = "tcp"
    port      = "443"
    source    = "0.0.0.0/0"
    action    = "allow"
  }

  rules {
    direction = "outbound"
    protocol  = "tcp"
    port      = "1-65535"
    source    = "0.0.0.0/0"
    action    = "allow"
  }

  rules {
    direction = "outbound"
    protocol  = "udp"
    port      = "1-65535"
    source    = "0.0.0.0/0"
    action    = "allow"
  }

  servers = [var.server_id]
}
