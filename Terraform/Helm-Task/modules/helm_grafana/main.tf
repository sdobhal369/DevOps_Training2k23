# resource "kubernetes_namespace" "namespace" {
#   metadata {
#     name = var.namespace
#   }
# }

## Grafana Helm Chart installed from repository.

resource "helm_release" "helm_grafana" {
  name        = var.release_name_gra
  chart       = "grafana"
  repository  = "https://grafana.github.io/helm-charts"
  namespace   = var.namespace_gra

  create_namespace = true
  wait             = true

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "replicas"
    value = "2"
  }
}

