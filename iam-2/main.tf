resource "aws_iam_user" "hemanthkumarreddy" {
  name = "hemanthkumarreddy"
}

resource "aws_iam_user_group_membership" "hemanthkumar_group" {
  user = aws_iam_user.hemanthkumarreddy.name

  groups = [
    "infra-admin"
  ]
}