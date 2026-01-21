variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "sa-east-1"
}


variable "route53_zone_name" {
  description = "Nome da zona privada do Route 53"
  type        = string
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
}

variable "environment" {
  description = "Ambiente (dev/prod)"
  type        = string
  default     = "prod"
}

variable "app_image_tag" {
  description = "Tag da imagem Docker da app"
  type        = string
  default     = "v1.0.0"
}


variable "namespace" {
  type = string
}

variable "kubernetes_version" {}

variable "vpc_id" {}

variable "subnet_ids" {}
