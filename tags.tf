resource "gitlab_tag_protection" "this" {
  project             = gitlab_project.this.id
  tag                 = "*"
  create_access_level = var.tag_create_access_level
}
