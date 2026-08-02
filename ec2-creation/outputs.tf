output "instance_ids" {
  value = aws_instance.test_server[*].id
}

output "public_ips" {
  value = aws_instance.test_server[*].public_ip
}
