terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.38.0"
    }
  }
}
resource "kubernetes_namespace_v1" "this" {
    metadata {
        name = var.namespace
        labels = {
          "app" = "observability"
        }
    }
}

resource "kubernetes_service_account_v1" "this" {
  metadata {
    name      = var.service_account_name
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }
}
