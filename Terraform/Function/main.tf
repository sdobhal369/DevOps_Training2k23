# ## AWS ECR Repository

# resource "aws_ecr_repository" "ecr" {

# # Use of count function and locals
#   count                = local.workspace == "ecr" ? length(lookup(var.ecr_name, local.workspace)) : length(lookup(var.ecr_name, "default"))
#   name                 = element(lookup(var.ecr_name, local.workspace), count.index)
#   image_tag_mutability = "MUTABLE"

#   image_scanning_configuration {
#     scan_on_push = true
#   }

#   tags = {
#     Name = "ecr-${lookup(var.iam_username, local.workspace)}"
#   }

# }


## IAM User

resource "aws_iam_user" "user" {

# Use of count function and locals
  count = local.workspace == "iam" ? length(lookup(var.iam_username, local.workspace)) : length(lookup(var.iam_username, "default"))
  name  = element(lookup(var.iam_username, local.workspace), count.index)
  
  tags = {
    Workspace = "${local.workspace}"
  }

}

resource "aws_iam_user_login_profile" "cred" {

  count                   = "${length(aws_iam_user.user)}"
  user                    = aws_iam_user.user[count.index].name
  password_reset_required = true

  depends_on = [
    aws_iam_user.user
  ]

}

data "aws_iam_policy" "policy" {

  name = "AdministratorAccess"

}

resource "aws_iam_policy_attachment" "attach" {
  
  name                    = "admin-policy"
  users                   = aws_iam_user.user[*].name
  policy_arn              = data.aws_iam_policy.policy.arn
  
  depends_on = [
    aws_iam_user.user
  ]
}