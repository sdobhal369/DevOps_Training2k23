## MongoDB Helm Chart Module
module "helm_mongo" {
  source = "./modules/helm_mongo"

  namespace_mon     = var.namespace_mon
  release_name_mon  = var.release_name_mon
}


## Grafana Helm Chart Module
module "helm_grafana" {
  source = "./modules/helm_grafana"

  namespace_gra    = var.namespace_gra
  release_name_gra = var.release_name_gra

  depends_on = [
    module.helm_mongo
  ]
}

## Null Resources to generate file with timestamp at the end of that file name
resource "null_resource" "output" {
  triggers = {
    always_run = local.timeregex
  }
  provisioner "local-exec" {
    when    = create
    command = <<EOF
        rm -f top_*.txt
        top -b -n 1 > top_${self.triggers.always_run}.txt
   EOF
  }

  depends_on = [
    module.helm_grafana
  ]
}