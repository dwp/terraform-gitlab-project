## [2.1.0](https://gitlab.com/dwp/engineering/gitlab-terraform-modules/project/compare/2.0.0...2.1.0) (2021-03-26)


### Features

* allow setting project description ([00780ad](https://gitlab.com/dwp/engineering/gitlab-terraform-modules/project/commit/00780adc3fcbebd80097a3dbfb18e31986c46c86))
* move all config to variables ([0ccf83b](https://gitlab.com/dwp/engineering/gitlab-terraform-modules/project/commit/0ccf83b4409a6d89aa270f6b5aca00c243aba51c))

## [2.0.0](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/compare/1.4.0...2.0.0) (2021-03-08)


### ⚠ BREAKING CHANGES

* the previous value for `branch_name_regex` is no longer
automatically set, so consumers using this value will need to pass it
into the module via the input variable

### Features

* add branch_name_regex input variable ([0f57a43](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/0f57a4372ed3f71ec45cd789b93f444b451d2fe9)), closes [#6](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/issues/6)
* explicitly set pages access level to private ([a298f98](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/a298f982fe408016712ecf6555a53c26c44f9849)), closes [#5](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/issues/5)

## [1.4.0](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/compare/1.3.0...1.4.0) (2021-03-05)


### Features

* add default empty map for members variable ([219c180](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/219c18058efebe446b8e09ea57cc1261db0120c6))
* upgrade gitlab provider to version 3.5.0 ([d9aa87f](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/d9aa87fdc32219687e06b33076abe9133983f21c))

## [1.3.0](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/compare/1.2.0...1.3.0) (2021-02-26)


### Features

* amend branch regex for branches created by renovate-bot ([6b4354d](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/6b4354d4305fdeca9d1eebb0d3f4cb972147b50d)), closes [#4](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/issues/4)
* **ci:** only run pipeline via web or on push ([18b4d7a](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/18b4d7ab0d132d5692abbb1ef54b01d2d04e214e))
* use push options to skip CI when creating a release ([e84d86b](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/e84d86b16bf8afa59d7a303db28b6fc9f712fc60))

## [1.2.0](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/compare/1.1.0...1.2.0) (2021-02-16)


### Features

* add project name format validation ([02bedb7](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/02bedb74c5a073243fc8493b542aaee21ec55217))

## [1.1.0](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/compare/1.0.0...1.1.0) (2021-02-16)


### Features

* add ability to set project membership ([e85a8fb](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/e85a8fbb9198e77f31307c9c7611e2ba61b5daf6))

## 1.0.0 (2021-02-11)


### Features

* **ci:** amend create-release job to run manually ([9982dd6](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/9982dd6652fb6e1af3025bb8cf25196ef2402ce2))
* **ci:** integrate semantic-release ([7dd0ff4](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/7dd0ff4117763bef7a083f4351c5af49e7db61b6))
* add initial project setup ([07f73d3](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/07f73d36af43b970efb4a9afe15991c38e9303b1))


### Bug Fixes

* **ci:** amend path to semantic-release command ([1d89222](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/1d892227e9f4a2b1d2ce2c014c7bce6016515e6d))
* **ci:** install git in create-release job ([cf6fc5d](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/cf6fc5dbe2888167468a3604fba1e5815dcb3945))
* **ci:** remove double dollar signs from variable ([c8137d2](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/c8137d20ab94d7d6bed0ace9171b60008dfc05de))
* **ci:** replace apk repository source ([f6ae00b](https://gitlab.com/dwp/apply-for-pension-credit/gitlab-common-terraform-modules/project/commit/f6ae00b7815eaace5dc0ac76fbfe09d44c2087d7))
