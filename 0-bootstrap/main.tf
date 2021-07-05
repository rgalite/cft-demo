module "seed_bootstrap" {
  source  = "terraform-google-modules/bootstrap/google"
  version = "~> 2.1"

  org_id               = var.organization_id
  billing_account      = var.billing_account
  group_org_admins     = var.group_org_admins
  group_billing_admins = var.group_billing_admins
  default_region       = var.default_region
  project_prefix       = var.project_prefix
  grant_billing_user   = false
}

module "cloudbuild_bootstrap" {
  source  = "terraform-google-modules/bootstrap/google//modules/cloudbuild"
  version = "~> 2.1"

  org_id                  = var.organization_id
  billing_account         = var.billing_account
  group_org_admins        = var.group_org_admins
  default_region          = var.default_region
  sa_enable_impersonation = true
  terraform_sa_email      = module.seed_bootstrap.terraform_sa_email
  terraform_sa_name       = module.seed_bootstrap.terraform_sa_name
  terraform_state_bucket  = module.seed_bootstrap.gcs_bucket_tfstate
  project_prefix          = var.project_prefix
}
