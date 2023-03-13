## Output variable definitions

output "user_arn" {

  value = aws_iam_user.user[*].arn

}

output "username" {
 
  value  = aws_iam_user_login_profile.cred[*].user

}

output "password" {
 
  value     = aws_iam_user_login_profile.cred[*].password
  sensitive = true

}