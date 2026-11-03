resource "aws_iam_user" "reddy" {
  name = "reddy"
}

resource "aws_iam_user_group_membership" "hemanthkumar_group" {
  user = aws_iam_user.reddy.name

  groups = [
    "infra-admin"
  ]
}