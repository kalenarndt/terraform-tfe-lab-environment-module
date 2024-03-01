# basic-lab-example

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
README.md updated successfully
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.6.6 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >=3.5.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.52.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_my_lab_2024"></a> [my\_lab\_2024](#module\_my\_lab\_2024) | ../../ | n/a |

## Resources

No resources.

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