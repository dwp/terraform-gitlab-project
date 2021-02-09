# project

This module creates a GitLab project with a default set of permissions.

## Requirements

See the [`versions.tf`](versions.tf) file for required Terraform and provider versions.

## Inputs

| Name            | Description                                                     | Type     | Default  | Required |
| --------------- | --------------------------------------------------------------- | -------- | -------- | :------: |
| default\_branch | The default branch the repository will use. Defaults to main    | `string` | `"main"` |    no    |
| group\_id       | The ID of the GitLab group that repositories will be created in | `number` | n/a      |   yes    |
| name            | The name of the project to be created                           | `string` | n/a      |   yes    |

## Outputs

| Name    | Description                 |
| ------- | --------------------------- |
| project | The GitLab project resource |

## Using this module in other projects

While this module was written for the Apply for Pension Credit project, it can be lifted out and used elsewhere very easily. The only reference to Apply for Pension Credit specifically is the branch name regex in [`project.tf`](project.tf). This can be removed or altered as needed.
