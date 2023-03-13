variable "region" {
  type        = string
  description = "AWS Region Name"
  default = ""
}

variable "profile" {
  type        = string
  description = "AWS Profile Name"
  default = ""
}

variable "iam_username" {
  type        = map
  description = "Username for AWS IAM"
  default = {
    default = ["default-user"]
    iam     = ["main-user1", "main-user2"]
  }
}

# variable "ecr_name" {
#   type        = map
#   description = "Username for AWS ECR"
#   default = {
#     default = ["default-ecr"]
#     ecr     = ["main-ecr1", "main-ecr2"]
#   }
# }