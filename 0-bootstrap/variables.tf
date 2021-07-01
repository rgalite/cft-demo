variable "organization_id" {
  description = "The organization id for the associated services"
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
}

variable "region" {
  description = "The region where the bucket will be created in"
  default     = "europe-west1"
}
