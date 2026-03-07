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
  description = "Lista de 3 IDs de subnets privadas em AZs diferentes para nós EKS (kubernetes.io/role/internal-elb tag necessária)"
  type        = list(string)
}

variable "cluster_name" {
  description = "Nome único do cluster EKS (ex: bpcode-pegasus-dev, max 100 chars, DNS-compliant)"
  type        = string
}

variable "environment" {
  description = "Ambiente: dev, staging, prod (usado em tags e nomes)"
  type        = string
}

variable "kubernetes_version" {
  description = "Versão Kubernetes do cluster (verifique disponibilidade em AWS console EKS)"
  type        = string
  default     = "1.31"
}

variable "admin_cidrs" {
  description = "CIDR(s) permitidos para SSH nos nós (ex: '189.45.1.100/32' ou '10.0.0.0/8' - NUNCA 0.0.0.0/0 em prod!)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "CIDRs autorizados a acessar endpoint público do EKS API server (segurança)"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "cluster_endpoint_private_access_cidrs" {
  description = "CIDRs da VPC permitidos para acesso privado ao EKS API server (ex: VPC CIDR 10.0.0.0/16)"
  type        = list(string)
  default     = ["10.0.0.0/0"]
}
