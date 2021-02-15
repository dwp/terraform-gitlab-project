variable "default_branch" {
  type        = string
  description = "The default branch the repository will use. Defaults to main"
  default     = "main"
}

variable "group_id" {
  type        = number
  description = "The ID of the GitLab group that repositories will be created in"
}

variable "members" {
  type = map(object({
    id       = number
    role     = string
    username = string
  }))
  description = "List of users to add to the project with the given role. Valid values are guest, reporter, developer and maintainer"
}

variable "name" {
  type        = string
  description = "The name of the project to be created"
}
