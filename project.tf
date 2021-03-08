resource "gitlab_project" "this" {
  name                   = var.name
  namespace_id           = var.group_id
  visibility_level       = "private"
  default_branch         = var.default_branch
  request_access_enabled = true

  lfs_enabled      = false
  packages_enabled = false
  snippets_enabled = false
  wiki_enabled     = false

  merge_method                                     = "ff"
  approvals_before_merge                           = 1
  only_allow_merge_if_pipeline_succeeds            = true
  only_allow_merge_if_all_discussions_are_resolved = true
  remove_source_branch_after_merge                 = true

  push_rules {
    commit_committer_check = true
    deny_delete_tag        = true
    member_check           = true
    prevent_secrets        = true
    branch_name_regex      = var.branch_name_regex
  }
}
