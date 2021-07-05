output "project_id" {
  value = module.seed_bootstrap.seed_project_id
}

output "bootstrap_bucket" {
  value = module.seed_bootstrap.gcs_bucket_tfstate
}
