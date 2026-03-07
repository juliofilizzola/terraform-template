variable "vpc_id" {
  description = "ID da VPC eks-vpc"
  type        = string
}

variable "private_subnets" {
  description = "3 subnets privadas para nós EKS"
  type        = list(string)
}

variable "public_subnets" {
  description = "Subnets públicas para ALB"
  type        = list(string)
  default     = []
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
}

variable "environment" {
  description = "Ambiente"
  type        = string
  default     = "prod"
}

variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "kubernetes_version" {
  description = "Versão Kubernetes"
  type        = string
  default     = "1.31"
}

variable "admin_cidrs" {
  description = "CIDRs para SSH"
  type        = string
  default     = "0.0.0.0/0"
}

variable "kms_key_arn" {
  description = "KMS ARN"
  type        = string
  default     = ""
}

variable "default_tags" {
  description = "Tags comuns"
  type        = map(string)
  default     = {}
}

variable "ssh_key_name" {
  description = "Chave EC2 SSH"
  type        = string
  default     = ""
}

variable "app_image_tag" {
  description = "Tag Docker app"
  type        = string
  default     = "v1.0.0"
}
