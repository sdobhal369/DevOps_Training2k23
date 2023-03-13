variable "namespace_gra" {
  type        = string
  description = "Kubernetes Namespace for grafana"
  default = ""
}

variable "release_name_gra" {
  type        = string
  description = "Helm Release Name for grafana"
  default = ""
}