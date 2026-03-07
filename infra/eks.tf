module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24.1"

  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  cluster_endpoint_public_access       = true
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs

  cluster_endpoint_private_access = true
  cluster_endpoint_private_access_cidrs = var.cluster_endpoint_private_access_cidrs

  eks_managed_node_groups = {
    workers = {
      name           = "bpcode-workers"
      use_name_prefix = false

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"

      min_size     = 3
      max_size     = 3
      desired_size = 3

      ami_type = "AL2_x86_64_STANDARD"
      disk_size = 20

      vpc_security_group_ids = [aws_security_group.eks_workers.id]
    }
  }

  cluster_addons = {
    coredns    = { most_recent = true }
    kube-proxy = { most_recent = true }
    vpc-cni    = { most_recent = true }
  }

  enable_irsa = true

  tags = {
    Environment = var.environment
    ClusterType = "pegasus"
  }
}
