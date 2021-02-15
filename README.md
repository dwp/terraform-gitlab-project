# project

This module creates a GitLab project with a default set of permissions.

## Requirements

See the [`versions.tf`](versions.tf) file for required Terraform and provider versions.

## Inputs

| Name            | Description                                                                                                         | Type                                                                                                        | Default  | Required |
| --------------- | ------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | -------- | :------: |
| default\_branch | The default branch the repository will use. Defaults to main                                                        | `string`                                                                                                    | `"main"` |    no    |
| group\_id       | The ID of the GitLab group that repositories will be created in                                                     | `number`                                                                                                    | n/a      |   yes    |
| members         | List of users to add to the project with the given role. Valid values are guest, reporter, developer and maintainer | <pre>map(object({<br>    id       = number<br>    role     = string<br>    username = string<br>  }))</pre> | n/a      |   yes    |
| name            | The name of the project to be created                                                                               | `string`                                                                                                    | n/a      |   yes    |

## Outputs

| Name    | Description                 |
| ------- | --------------------------- |
| project | The GitLab project resource |

## Naming your projects

As per the engineering practice guidance:

> Projects must be named in lowercase, using a-z, 0-9, and - symbols only. The name should reflect the contents and must not have any generic or repetitive prefixes or suffixes, or abbreviations, acronyms, or initialisms.

For example, the following would not be an acceptable project name:

```terraform
module "project" {
  source = "git::git@gitlab.com:dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project.git"

  group_id = 123
  name     = "apply for pension credit citizen UI"
}
```

Instead, it should be something like this:

```terraform
module "project" {
  source = "git::git@gitlab.com:dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project.git"

  group_id = 123
  name     = "citizen-frontend"
}
```

## Using this module in other projects

While this module was written for the Apply for Pension Credit project, it can be lifted out and used elsewhere very easily. The only reference to Apply for Pension Credit specifically is the branch name regex in [`project.tf`](project.tf). This can be removed or altered as needed.
