variable "aws_region" {
  description = "Região AWS onde criar recursos (ex: us-east-1)"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "ID da VPC já existente (ex: vpc-0123456789abcdef0)"
  type        = string
}

variable "private_subnets" {
  description = "Lista de 3 IDs de subnets privadas em AZs diferentes para nós EKS"
  type        = list(string)
}

variable "cluster_name" {
  description = "Nome único do cluster EKS (ex: bpcode-pegasus-prod)"
  type        = string
}

variable "environment" {
  description = "Ambiente: prod"
  type        = string
}

variable "kubernetes_version" {
  description = "Versão Kubernetes do cluster"
  type        = string
  default     = "1.31"
}

variable "admin_cidrs" {
  description = "CIDRs para SSH (ex: 189.45.1.100/32)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "CIDRs para endpoint público"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "cluster_endpoint_private_access_cidrs" {
  description = "CIDRs para endpoint privado (VPC CIDR)"
  type        = list(string)
  default     = ["10.0.0.0/0"]
}

variable "kms_key_arn" {
  description = "ARN KMS para encryption (deixe vazio)"
  type        = string
  default     = ""
}

variable "default_tags" {
  description = "Tags comuns"
  type        = map(string)
  default     = {}
}
