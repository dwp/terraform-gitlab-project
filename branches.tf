resource "gitlab_branch_protection" "this" {
  project                      = gitlab_project.this.id
  branch                       = var.default_branch
  push_access_level            = var.push_access_level
  merge_access_level           = var.merge_access_level
  code_owner_approval_required = var.code_owner_approval_required
}
