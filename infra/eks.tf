module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24.1"

  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version

  vpc_id                         = var.vpc_id
  subnet_ids                     = var.private_subnets

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true

  cluster_encryption_config = {
    provider = {
      key_arn = var.kms_key_arn
    }
    resources = ["secrets"]
  }

  cluster_enabled_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  eks_managed_node_groups = {
    workers = {
      name                = "bptech-workers-prod"
      use_name_prefix     = false
      instance_types      = ["t3.medium"]
      capacity_type       = "ON_DEMAND"
      min_size            = 3
      max_size            = 3
      desired_size        = 3
      max_unavailable_percentage = 33
      disk_size           = 50
      disk_type           = "gp3"
      vpc_security_group_ids = [aws_security_group.eks_workers.id]
      labels = {
        tier     = "production"
        workload = "bptech-prod"
      }
      taints = [{
        key    = "dedicated"
        value  = "production"
        effect = "NO_SCHEDULE"
      }]
      update_config = {
        max_unavailable_percentage = 33
      }
    }
  }

  cluster_addons = {
    coredns = { most_recent = true }
    kube-proxy = { most_recent = true }
    vpc-cni = { most_recent = true }
  }

  enable_irsa = true

  tags = merge(var.default_tags, {
    Environment = var.environment
    ClusterType = "pegasus-prod"
    Purpose     = "BPTech Production Workloads"
  })
}
