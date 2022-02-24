variable "name" {
  description = "Name of the domain. This should be lowercase with dashes"
  type        = string
}

variable "env_name" {
  description = "Display name of the environment"
  type        = string
}

variable "env_id" {
  description = "Environment's \"short name\""
  type        = string
}

variable "env_folder_id" {
  description = "Environment folder's id"
  type        = string
}

variable "billing_account" {
  description = "Billing account to link the project to"
  type        = string
}

variable "org_id" {
  description = "GCP Organization ID"
  type        = string
}

variable "activate_apis" {
  description = "List of APIs to activate within the project"
  type        = list(string)
}

variable "activate_api_identities" {
  description = "List of API identities to activate within the project"
  type = list(object({
    api   = string
    roles = list(string)
  }))
  default = []
}
variable "default_service_account" {
  description = "Project default service account setting: can be one of `delete`, `deprivilege`, `disable`, or `keep`."
  default     = "deprivilege"
  type        = string
}
