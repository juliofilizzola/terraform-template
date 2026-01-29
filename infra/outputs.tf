output "eks_cluster_name" {
  value = module.eks.cluster_name
  description = "The name of the EKS cluster."
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
  description = "The endpoint of the EKS cluster."
}
