module "my_lab_2024" {
  source           = "../../"
  tfe_organization = var.tfe_organization
  tfe_demo_users   = var.tfe_demo_users
}