variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
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
  default     = "dev"
}

variable "app_image_tag" {
  description = "Tag da imagem Docker da app"
  type        = string
  default     = "v1.0.0"
}

variable "namespace" {
  type = string
}

variable "vpc_id" {
  description = "ID da VPC já existente a ser utilizada."
  type        = string
}

variable "private_subnets" {
  description = "Lista de IDs das subnets privadas já existentes."
  type        = list(string)
}

variable "public_subnets" {
  description = "Lista de IDs das subnets públicas já existentes."
  type        = list(string)
}

variable "ssh_key_name" {
  description = "Nome da chave SSH existente na AWS para acesso aos nodes do EKS."
  type        = string
}
