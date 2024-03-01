variable "tfe_organization" {
  type        = string
  description = "Name of the TFE/C organization to create resources in"
}

variable "tfe_demo_users" {
  type        = set(string)
  description = "List of users to invite to the TFE/C organization"
}