output "role_arn" {
  value = aws_iam_role.prod_ci_role.arn
}

output "policy_arn" {
  value = aws_iam_policy.prod_ci_policy.arn
}

output "group_name" {
  value = aws_iam_group.prod_ci_group.name
}

output "user_name" {
  value = aws_iam_user.prod_ci_user.name
}