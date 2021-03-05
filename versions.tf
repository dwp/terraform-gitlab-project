terraform {
  required_version = ">=0.14"

  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "3.5.0"
    }
  }
}
