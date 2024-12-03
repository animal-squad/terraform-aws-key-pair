output "id" {
  description = "key pair의 name. terraform에서 사용하는 id"
  value       = aws_key_pair.key_pair.id
}

output "arn" {
  description = "key pair의 arn"
  value       = aws_key_pair.key_pair.arn
}

output "name" {
  description = "key pair의 name"
  value       = aws_key_pair.key_pair.key_name
}

output "key_pair_id" {
  description = "key pair의 id. aws에서 사용하는 id"
  value       = aws_key_pair.key_pair.key_pair_id
}

output "type" {
  description = "key pair의 type"
  value       = aws_key_pair.key_pair.key_type
}

output "pem_key" {
  description = "key pair의 PEM KEY"
  value       = tls_private_key.key_pair.private_key_pem
}
