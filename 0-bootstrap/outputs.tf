output "project_id" {
  value = module.seed_bootstrap.seed_project_id
}

output "bootstrap_bucket" {
  value = module.seed_bootstrap.gcs_bucket_tfstate
}

output "terraform_sa_email" {
  description = "Email for privileged service account for Terraform."
  value       = module.seed_bootstrap.terraform_sa_email
}

output "terraform_sa_name" {
  description = "Fully qualified name for privileged service account for Terraform."
  value       = module.seed_bootstrap.terraform_sa_name
}
