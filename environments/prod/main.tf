module "prod" {
  source = "../../infra"
  app_image_tag = var.app_image_tag
  cluster_name  = var.cluster_name
  environment   = var.environment
  namespace     = var.namespace
  route53_zone_name = var.route53_zone_name
  aws_region    = var.aws_region
}