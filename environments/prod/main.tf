module "infra" {
  source = "../../infra"
  aws_region       = "${var.aws_region}"
  cluster_name = "${var.cluster_name}"
  route53_zone_name = "${var.route53_zone_name}"
}