module "prod" {
  source = "../../infra"

  vpc_id                              = var.vpc_id
  private_subnets                     = var.private_subnets
  public_subnets                      = var.public_subnets
  cluster_name                        = var.cluster_name
  environment                         = var.environment
  aws_region                          = var.aws_region
  kubernetes_version                  = var.kubernetes_version
  admin_cidrs                         = var.admin_cidrs
  kms_key_arn                         = var.kms_key_arn
  default_tags                        = var.default_tags
  ssh_key_name                        = var.ssh_key_name
}
