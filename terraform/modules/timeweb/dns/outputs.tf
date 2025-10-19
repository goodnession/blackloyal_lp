output "domain_id" {
  description = "ID of the domain"
  value       = data.twc_domain.main.id
}

output "domain_name" {
  description = "Domain name"
  value       = data.twc_domain.main.name
}
