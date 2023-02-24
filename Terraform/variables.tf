variable "namespace_mon" {
  type        = string
  description = "Kubernetes Namespace for mongo"
  default = ""
}

variable "release_name_mon" {
  type        = string
  description = "Helm Release Name for mongo"
  default = ""
}

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

variable "k8s_config_path" {
  type        = string
  description = "kubernetes config path"
  default = ""
}

variable "context_name" {
  type        = string
  description = "Name of the current kubernetes context"
  default = ""
}