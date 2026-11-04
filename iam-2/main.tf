resource "aws_iam_user" "rupesh" {
  name = "rupesh"
}

resource "aws_iam_user_group_membership" "rupesh_group" {
  user = aws_iam_user.rupesh.name

  groups = [
    "infra-admin"
  ]
}