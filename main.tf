resource "aws_iam_role" "prod_ci_role" {
  name               = "prod-ci-role-${var.suffix}"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = { AWS = "*" }
      }
    ]
  })
}

resource "aws_iam_policy" "prod_ci_policy" {
  name        = "prod-ci-policy-${var.suffix}"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = "sts:AssumeRole"
        Effect   = "Allow"
        Resource = aws_iam_role.prod_ci_role.arn
      }
    ]
  })
}

resource "aws_iam_group" "prod_ci_group" {
  name = "prod-ci-group-${var.suffix}"
}

resource "aws_iam_group_policy_attachment" "prod_ci_group_policy_attachment" {
  group      = aws_iam_group.prod_ci_group.name
  policy_arn = aws_iam_policy.prod_ci_policy.arn
}

resource "aws_iam_user" "prod_ci_user" {
  name = "prod-ci-user-${var.suffix}"
}

data "aws_iam_group" "prod_ci_group" {
  group_name = aws_iam_group.prod_ci_group.name
}

resource "aws_iam_group_membership" "prod_ci_group_membership" {
  name  = data.aws_iam_group.prod_ci_group.id
  users = [aws_iam_user.prod_ci_user.name]
  group = data.aws_iam_group.prod_ci_group.group_name
}