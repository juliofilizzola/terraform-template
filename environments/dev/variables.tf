variable "app_image_tag" {
  description = "Tag da imagem Docker da app"
  type        = string
  default     = "v1.0.0"
}

variable "cluster_name" {
  description = "Name do cluster EKS"
  type        = string
}

variable "namespace" {
  type = string
  description = "Namespace do Kubernetes"
}

variable "route53_zone_name" {
  description = "Nome da zona privada do Route 53"
  type        = string
}

variable "aws_region" {
  type = string
  description = "Aws region"
  default = "us-east-1"
}


variable "environment" {
  description = "Ambiente (dev/prod)"
  type        = string
  default     = "prod"
}
