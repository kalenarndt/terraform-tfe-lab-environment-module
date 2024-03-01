data "tfe_organization" "org" {
  name = var.tfe_organization
}

resource "random_id" "prefix" {
  for_each    = var.tfe_demo_users
  byte_length = 4
}

locals {
  email_regex = { for value in var.tfe_demo_users :
    value => replace(regex("^(.*?)@", value)[0], "+", "-")
  }
}

resource "tfe_organization_membership" "users" {
  for_each     = var.tfe_demo_users
  organization = data.tfe_organization.org.name
  email        = each.value
}

resource "tfe_project" "proj" {
  for_each     = local.email_regex
  name         = each.value
  organization = data.tfe_organization.org.name
}

resource "tfe_workspace" "ws" {
  for_each     = local.email_regex
  name         = "${each.value}-${random_id.prefix[each.key].hex}"
  organization = data.tfe_organization.org.name
  project_id   = tfe_project.proj[each.key].id
  description  = "Demo workspace created for ${each.key}"
}

resource "tfe_team" "teams" {
  for_each     = local.email_regex
  name         = "${each.value}-${random_id.prefix[each.key].hex}"
  organization = data.tfe_organization.org.name
}

resource "tfe_team_organization_member" "members" {
  for_each                   = local.email_regex
  team_id                    = tfe_team.teams[each.key].id
  organization_membership_id = tfe_organization_membership.users[each.key].id
}

resource "tfe_team_project_access" "admin" {
  for_each   = local.email_regex
  team_id    = tfe_team.teams[each.key].id
  project_id = tfe_project.proj[each.key].id
  access     = "maintain"
}