resource "gitlab_project_membership" "user" {
  for_each = { for member in var.members : member.username => member }

  project_id   = gitlab_project.this.id
  user_id      = each.value.id
  access_level = each.value.role
}
