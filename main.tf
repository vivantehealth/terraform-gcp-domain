# Provision a project for the domain
module "domain_project_factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 16.0"

  # Max project id is 30 chars, and we are appending a dash and 4 random chars
  # Also trim trailing dash in case truncated string ends with a dash
  project_id                  = trim(substr("${var.name}-${var.env_id}", 0, 25), "-")
  name                        = substr("${var.name} ${var.env_name}", 0, 30)
  billing_account             = var.billing_account
  random_project_id           = true
  org_id                      = var.org_id
  folder_id                   = var.env_folder_id
  activate_apis               = var.activate_apis
  disable_services_on_destroy = false
  disable_dependent_services  = false
  activate_api_identities     = var.activate_api_identities
  default_service_account     = var.default_service_account
}

