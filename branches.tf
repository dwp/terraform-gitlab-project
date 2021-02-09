resource "gitlab_branch_protection" "this" {
  project                      = gitlab_project.this.id
  branch                       = "main"
  push_access_level            = "no one"
  merge_access_level           = "developer"
  code_owner_approval_required = true
}
