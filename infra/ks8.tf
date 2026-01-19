module "ks" {
  source = "terraform-aws-modules/kubernetes/aws"
  version = "~> 1.0"
  providers = {
    kubernetes = kubernetes.eks
  }
}
