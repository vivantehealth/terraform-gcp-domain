output "project_id" {
  value = module.domain_project_factory.project_id
}

# TODO pass all outputs
output "service_account_email" {
  value = module.domain_project_factory.service_account_email
}
