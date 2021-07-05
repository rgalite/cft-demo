variable "organization_id" {
  description = "The organization id for the associated services"
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
}

variable "default_region" {
  description = "Default region to create resources where applicable."
  type        = string
  default     = "us-central1"
}

variable "group_org_admins" {
  description = "Google Group for GCP Organization Administrators"
  type        = string
}

variable "group_billing_admins" {
  description = "Google Group for GCP Billing Administrators"
  type        = string
}

variable "project_prefix" {
  description = "Name prefix to use for projects created."
  default     = "cft"
  type        = string
}
