output "s3_bucket_name" {
  value = module.s3.bucket
  description = "The name of the S3 bucket created."
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
  description = "The name of the EKS cluster."
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
  description = "The endpoint of the EKS cluster."
}
