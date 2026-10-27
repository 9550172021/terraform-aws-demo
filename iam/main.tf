resource "aws_iam_user" "demo_user" {
  name = var.iam_user_name

  tags = {
    Environment = "Demo"
    Owner       = "Hemanth"
  }
}

resource "aws_iam_user_policy_attachment" "readonly" {
  user       = aws_iam_user.demo_user.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}