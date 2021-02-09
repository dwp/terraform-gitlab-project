resource "gitlab_project_level_mr_approvals" "this" {
  project_id                                     = gitlab_project.this.id
  reset_approvals_on_push                        = true
  disable_overriding_approvers_per_merge_request = true
  merge_requests_author_approval                 = true
  merge_requests_disable_committers_approval     = true
}
