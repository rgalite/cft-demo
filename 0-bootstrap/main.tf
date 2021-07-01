module "bootstrap_project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  random_project_id       = true
  name                    = "bootstrap"
  org_id                  = var.organization_id
  billing_account         = var.billing_account
  default_service_account = "deprivilege"
  activate_apis           = ["sourcerepo.googleapis.com", "cloudbuild.googleapis.com", "compute.googleapis.com"]
}

module "bootstrap_bucket" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 1.3"

  name       = "${module.bootstrap_project.project_id}-tfstate"
  project_id = module.bootstrap_project.project_id
  location   = var.region
}

resource "google_sourcerepo_repository" "bootstrap_repository" {
  name    = module.bootstrap_project.project_id
  project = module.bootstrap_project.project_id
}
