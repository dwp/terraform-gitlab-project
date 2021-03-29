# Contributing

## Contents of this file

### For contributors
- [Running locally](#running-locally)
- [Conventions to follow](#conventions-to-follow)
- [Testing and linting](#testing-and-linting)
- [Updating Changelog](#updating-changelog)

### For maintainers
- [Releasing a new version](#releasing-a-new-version)

## Running locally

Locally source module into another Terraform code base and plan/apply as normal.

## Conventions to follow

Follow [Terraform Style Conventions](https://www.terraform.io/docs/language/syntax/style.html) and [Terraform Standard Module Structure](https://www.terraform.io/docs/language/modules/develop/structure.html).

Follow DWP [Commit message standard](https://github.com/dwp/commitlint-config-base) as this is used for generating the CHANGELOG and release tags.

## Testing and linting

Code is linted using `terraform fmt` and scanned with [KICS](https://kics.io/)

## Updating Changelog

[CHANGELOG.md](CHANGELOG.md) is updated automatically in release pipeline.

## Releasing a new version

Changes are made and released on GitLab, which then mirrors to GitHub with tags presented as a version on Terraform Registry.
