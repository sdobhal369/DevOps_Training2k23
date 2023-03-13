# resource "kubernetes_namespace" "namespace" {
#   metadata {
#     name = var.namespace
#   }
# }


## MongoDB server helm chart installed from local.

resource "helm_release" "helm_mongo" {
  name        = var.release_name_mon
  chart       = "./charts/mongo_chart"
  namespace   = var.namespace_mon

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