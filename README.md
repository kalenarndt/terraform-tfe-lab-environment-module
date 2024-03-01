# terraform-tfe-lab-module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
README.md updated successfully
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.6.6 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.5.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.52.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.5.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | >=0.52.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_id.prefix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [tfe_organization_membership.users](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization_membership) | resource |
| [tfe_project.proj](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_team.teams](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_organization_member.members](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_organization_member) | resource |
| [tfe_team_project_access.admin](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_project_access) | resource |
| [tfe_workspace.ws](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_organization.org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tfe_demo_users"></a> [tfe\_demo\_users](#input\_tfe\_demo\_users) | List of users to invite to the TFE/C organization | `set(string)` | n/a | yes |
| <a name="input_tfe_organization"></a> [tfe\_organization](#input\_tfe\_organization) | Name of the TFE/C organization to create resources in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_demo_user_map"></a> [demo\_user\_map](#output\_demo\_user\_map) | Map of demo users that have been created along with their project, workspace, workspace html url, team, and project access |
<!-- END_TF_DOCS -->