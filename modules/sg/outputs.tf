output "security_groups" {
  value = [aws_security_group.allow_ssh.id]
}

output "vpc_security_group_ids" {
  value = [aws_security_group.rds_security_group.id]
}