variable "group_id" {
  type        = number
  description = "The ID of the GitLab group that repositories will be created in"
}

variable "name" {
  type        = string
  description = "The name of the project to be created"

  validation {
    condition     = can(regex("^[a-z0-9-]*$", var.name))
    error_message = "Projects must be named in lowercase, using a-z, 0-9, and - (hyphen) symbols only."
  }
}

variable "approvals_before_merge" {
  type        = string
  description = "(Optional) Number of merge request approvals required for merging. Default is 0."
  default     = 1
}

variable "default_branch" {
  type        = string
  description = "(Optional) The default branch the repository will use. Defaults to main."
  default     = "main"
}

variable "description" {
  type        = string
  description = "(Optional) A description of the project."
  default     = ""
}

variable "lfs_enabled" {
  type        = bool
  description = "(Optional) Enable LFS for the project."
  default     = false
}

variable "members" {
  type = map(object({
    id       = number
    role     = string
    username = string
  }))
  description = "(Optional) List of users to add to the project with the given role. Valid values are guest, reporter, developer and maintainer"
  default     = {}
}

variable "merge_method" {
  type        = string
  description = "(Optional) Set to `ff` to create fast-forward merges. Valid values are `merge`, `rebase_merge`, `ff`."
  default     = "ff"
}

variable "only_allow_merge_if_all_discussions_are_resolved" {
  type        = bool
  description = "(Optional) Set to true if you want to allow merges only if all discussions are resolved."
  default     = true
}

variable "only_allow_merge_if_pipeline_succeeds" {
  type        = bool
  description = "(Optional) Set to true if you want to allow merges only if a pipeline succeeds."
  default     = true
}

variable "packages_enabled" {
  type        = bool
  description = "(Optional) Enable packages repository for the project."
  default     = false
}

variable "pages_access_level" {
  type        = string
  description = "(Optional) Enable pages access control. Valid values are `disabled`, `private`, `enabled`, `public`."
  default     = "private"
}

variable "remove_source_branch_after_merge" {
  type        = bool
  description = "(Optional) Enable `Delete source branch` option by default for all new merge requests."
  default     = true
}

variable "request_access_enabled" {
  type        = bool
  description = "(Optional) Allow users to request member access."
  default     = true
}

variable "snippets_enabled" {
  type        = bool
  description = "(Optional) Enable snippets for the project."
  default     = false
}

variable "visibility_level" {
  type        = string
  description = "(Optional) Set to `public` to create a public project. Valid values are `private`, `internal`, `public`."
  default     = "private"
}

variable "wiki_enabled" {
  type        = bool
  description = "(Optional) Enable wiki for the project."
  default     = false
}



## Push Rules

variable "branch_name_regex" {
  type        = string
  description = "(Optional) Regular expression to enforce on branch names"
  default     = ""
}

variable "commit_committer_check" {
  type        = bool
  description = "(Optional, bool) Users can only push commits to this repository that were committed with one of their own verified emails."
  default     = true
}

variable "deny_delete_tag" {
  type        = bool
  description = "(Optional) Deny deleting a tag."
  default     = true
}

variable "member_check" {
  type        = bool
  description = "(Optional) Restrict commits by author (email) to existing GitLab users."
  default     = true
}

variable "prevent_secrets" {
  type        = bool
  description = "(Optional) GitLab will reject any files that are likely to contain secrets."
  default     = true
}


## Default branch protection

variable "code_owner_approval_required" {
  type        = bool
  description = "(Optional) Require code owner approval before merging"
  default     = true
}

variable "merge_access_level" {
  type        = string
  description = "(Optional) One of five levels of access to the project e.g. `no one`, `developer`, `maintainer`"
  default     = "developer"
}

variable "push_access_level" {
  type        = string
  description = "(Optional) One of five levels of access to the project e.g. `no one`, `developer`, `maintainer`"
  default     = "no one"
}


## Merge Request Approvals

variable "disable_overriding_approvers_per_merge_request" {
  type        = bool
  description = "(Optional) By default, users are able to edit the approval rules in merge requests. If set to true, the approval rules for all new merge requests will be determined by the default approval rules."
  default     = true
}

variable "merge_requests_author_approval" {
  type        = bool
  description = "(Optional) Set to true if you want to allow merge request authors to self-approve merge requests. Authors also need to be included in the approvers list in order to be able to approve their merge request."
  default     = true
}

variable "merge_requests_disable_committers_approval" {
  type        = bool
  description = "(Optional) Set to true if you want to prevent approval of merge requests by merge request committers."
  default     = true
}

variable "reset_approvals_on_push" {
  type        = bool
  description = "(Optional) Set to true if you want to remove all approvals in a merge request when new commits are pushed to its source branch."
  default     = true
}
