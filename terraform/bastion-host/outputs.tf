output "security_group_id" {
  value = aws_security_group.this.id
}
output "public_ip" {
  value = aws_instance.this.public_ip
}