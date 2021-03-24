# project

This module creates a GitLab project with a default set of permissions.

Terraform module to manage GitLab projects with DWP default settings. This module is [published on Terraform Registry](https://registry.terraform.io/modules/dwp/project/gitlab) and it should be referred to for usage documentation.

## Requirements

- See the [`versions.tf`](versions.tf) file for required Terraform and provider versions.
- GitLab personal access token with the following permissions:
    - `api`
- A GitLub group

## Usage

```hcl
module "my_gitlab_project" {
  source = "dwp/project/gitlab"

  group_id = 123
  name     = "my-project"
}
```

## Example

```hcl
variable "gitlab_token" {
  type        = string
  description = "GitLab personal access token for managing projects"
}

provider "gitlab" {
  token = var.gitlab_token
}

resource "gitlab_group" "my_group" {
  name        = "my-group"
  path        = "my-group"
  description = "An example group"
}

module "my_gitlab_project" {
  source = "dwp/project/gitlab"

  group_id = gitlab_group.example.id
  name     = "my-project"
}
```

## Naming your projects

As per the engineering practice guidance:

> Projects must be named in lowercase, using a-z, 0-9, and - symbols only. The name should reflect the contents and must not have any generic or repetitive prefixes or suffixes, or abbreviations, acronyms, or initialisms.

For example, the following would not be an acceptable project name:

```terraform
module "project" {
  source = "dwp/project/gitlab"

  group_id = 123
  name     = "apply for pension credit citizen UI"
}
```

Instead, it should be something like this:

```terraform
module "project" {
  source = "dwp/project/gitlab"

  group_id = 123
  name     = "citizen-frontend"
}
```

## Deleting your project

To avoid accidental destruction, particularly for modifications that require replacement, this module will not destroy the project resource. Unfortunately, Terraform only allows [literal values for lifecycle rules](https://www.terraform.io/docs/language/meta-arguments/lifecycle.html#literal-values-only), so this cannot be variable or conditional. As a result, the project should be manually deleted from GitLab and Terraform state.

- [Delete project in GitLab](https://docs.gitlab.com/ee/user/project/working_with_projects.html#delete-a-project)
- [Remove a resource from Terraform state](https://www.terraform.io/docs/cli/commands/state/rm.html)
    - e.g. `terraform state rm module.my_gitlab_project.gitlab_project.this`
