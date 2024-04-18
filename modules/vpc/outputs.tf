output "vpc_id" {
    value = aws_vpc.my_vpc.id
}

output "subnet_id" {
  value = aws_subnet.public1.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.rds_subnet_group.name
}