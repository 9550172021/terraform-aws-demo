output "iam_user_name" {
  value = aws_iam_user.demo_user.name
}

output "iam_user_arn" {
  value = aws_iam_user.demo_user.arn
}