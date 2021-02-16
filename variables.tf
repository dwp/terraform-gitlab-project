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

  validation {
    condition     = can(regex("^[a-z0-9-]*$", var.name))
    error_message = "Projects must be named in lowercase, using a-z, 0-9, and - (hyphen) symbols only."
  }
}
