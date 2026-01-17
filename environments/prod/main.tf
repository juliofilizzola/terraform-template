module "prod" {
  source = "../../infra"
  app_image_tag = "${va}"
}