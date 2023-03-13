## Output variable definitions for grafana helm_release chart

output "chart_name" {
  description = "Deployed grafana helm chart name"
  value       = helm_release.helm_grafana.chart
}

output "release_id" {
  description = "Release name of the grafana helm chart"
  value       = helm_release.helm_grafana.id
}

output "release_status" {
  description = "Release Status of the deployed grafana helm chart"
  value       =  helm_release.helm_grafana.status
}

output "version" {
  description = "Version of the deployed grafana helm chart"
  value       =  helm_release.helm_grafana.version
}