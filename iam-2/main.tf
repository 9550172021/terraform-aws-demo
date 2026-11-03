resource "aws_iam_user" "hemanthkumar" {
  name = "hemanthkumar"
}

resource "aws_iam_user_group_membership" "hemanthkumar_group" {
  user = aws_iam_user.hemanthkumar.name

  groups = [
    "infra-admin"
  ]
}