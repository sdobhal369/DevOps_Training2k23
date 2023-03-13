## Output variable definitions for helm_release chart

output "chart_name" {
  description = "Deployed mongo helm chart name"
  value       =  helm_release.helm_mongo.name
}

output "release_id" {
  description = "Release name of the mongo helm chart"
  value       =  helm_release.helm_mongo.id
}

output "release_status" {
  description = "Release Status of the deployed mongo helm chart"
  value       =  helm_release.helm_mongo.status
}

output "manifest" {
  description = "Manifest of the deployed mongo helm chart"
  value       =  helm_release.helm_mongo.manifest
}

output "version" {
  description = "Version of the deployed mongo helm chart"
  value       =  helm_release.helm_mongo.version
}