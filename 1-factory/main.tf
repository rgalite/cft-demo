module "project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name              = "factory"
  random_project_id = true
  org_id            = var.organization_id
  billing_account   = var.billing_account
}
