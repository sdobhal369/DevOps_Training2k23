## AWS Provider(latest)
# provider "aws" {
#   access_key  =  var.access_key
#   secret_key  =  var.secret_key
#   region      =  var.region
# }

## Kubernetes Provider(latest)
# provider "kubernetes" {
#  
#   config_path = var.k8s_config_path
#   config_context = var.context_name
#
# }

## Helm Provider(latest)
provider "helm" {
  kubernetes {

    config_path = var.k8s_config_path
    config_context = var.context_name
  
  }
}