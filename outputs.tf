output "demo_user_map" {
  value = { for key, value in tfe_organization_membership.users :
    key => {
      project        = tfe_project.proj[key].name,
      workspace      = tfe_workspace.ws[key].name,
      workspace_url  = tfe_workspace.ws[key].html_url,
      team           = tfe_team.teams[key].name,
      project_access = tfe_team_project_access.admin[key].access
    }
  }
  description = "Map of demo users that have been created along with their project, workspace, workspace html url, team, and project access"
}