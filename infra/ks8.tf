module "ks" {
  resource "kubernetes_manifest" "app" {
    manifest = {
      apiVersion = "apps/v1"
      kind       = "Deployment"
      metadata = {
        name      = "minha-app"
        namespace = "default"
        labels = {
          app         = "minha-app"
          environment = var.environment
        }
      }
      spec = {
        replicas = 2
        selector = {
          matchLabels = {
            app = "minha-app"
          }
        }
        template = {
          metadata = {
            labels = {
              app         = "minha-app"
              environment = var.environment
            }
          }
          spec = {
            containers = [
              {
                name  = "minha-app-container"
                image = "meu-repositorio/minha-app:${var.app_image_tag}"
                ports = [
                  {
                    containerPort = 80
                  }
                ]
              }
            ]
          }
        }
      }
    }
  }
}