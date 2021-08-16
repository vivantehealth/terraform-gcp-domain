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
