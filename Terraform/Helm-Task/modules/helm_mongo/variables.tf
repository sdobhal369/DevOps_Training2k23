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