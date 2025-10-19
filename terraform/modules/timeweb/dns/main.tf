# Получаем существующий домен (домен должен быть уже зарегистрирован)
data "twc_domain" "main" {
  name = var.domain_name
}

resource "twc_dns_record" "a_record" {
  domain_id = data.twc_domain.main.id
  type      = "A"
  name      = "@"
  value     = var.server_ip
  ttl       = 300
}

resource "twc_dns_record" "www_cname" {
  domain_id = data.twc_domain.main.id
  type      = "CNAME"
  name      = "www"
  value     = "@"
  ttl       = 300
}
