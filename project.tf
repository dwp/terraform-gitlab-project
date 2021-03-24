resource "gitlab_project" "this" {
  name                   = var.name
  namespace_id           = var.group_id
  description            = var.description
  visibility_level       = var.visibility_level
  default_branch         = var.default_branch
  request_access_enabled = var.request_access_enabled

  lfs_enabled      = var.lfs_enabled
  packages_enabled = var.packages_enabled
  snippets_enabled = var.snippets_enabled
  wiki_enabled     = var.wiki_enabled

  merge_method                                     = var.merge_method
  approvals_before_merge                           = var.approvals_before_merge
  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  remove_source_branch_after_merge                 = var.remove_source_branch_after_merge

  pages_access_level = var.pages_access_level

  push_rules {
    commit_committer_check = var.commit_committer_check
    deny_delete_tag        = var.deny_delete_tag
    member_check           = var.member_check
    prevent_secrets        = var.prevent_secrets
    branch_name_regex      = var.branch_name_regex
  }

  lifecycle {
    prevent_destroy = true
  }
}
