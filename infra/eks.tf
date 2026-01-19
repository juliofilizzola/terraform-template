module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name = var.cluster_name
  kubernetes_version = var.kubernetes_version
  addons = {
    coredns = {
      enabled = true
    }
    kube-proxy = {
      enabled = true
    }
    vpc-cni = {
      enabled = true
    }
  }


  endpoint_public_access = true

  enable_cluster_createro_admin_permissions = true

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids
  controler_plane_subnert_ids = var.subnet_ids

}
