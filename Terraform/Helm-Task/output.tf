## Output variable definitions that call output from helm modules

# Mongo Output definition

output "mongo_chart_name" {
  description = "Deployed mongo helm chart name"
  value       = module.helm_mongo.chart_name
}

output "mongo_release_id" {
  description = "Release name of the mongo helm chart"
  value       = module.helm_mongo.release_id
}

output "mongo_release_status" {
  description = "Release Status of the deployed mongo helm chart"
  value       =  module.helm_mongo.release_status
}

output "mongo_version" {
  description = "Version of the deployed mongo helm chart"
  value       =  module.helm_mongo.version
}


# Grafana Output definition

output "grafana_chart_name" {
  description = "Deployed grafana helm chart name"
  value       = module.helm_grafana.chart_name
}

output "grafana_release_id" {
  description = "Release name of the grafana helm chart"
  value       = module.helm_grafana.release_id
}

output "grafana_release_status" {
  description = "Release Status of the deployed grafana helm chart"
  value       =  module.helm_grafana.release_status
}

output "grafana_version" {
  description = "Version of the deployed grafana helm chart"
  value       =  module.helm_grafana.version
}