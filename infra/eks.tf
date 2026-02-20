module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.33"
  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  public_subnet_ids = var.public_subnets

  eks_managed_node_groups = {
    general = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
      key_name       = var.ssh_key_name
    }
  }

  enable_irsa = true
}
