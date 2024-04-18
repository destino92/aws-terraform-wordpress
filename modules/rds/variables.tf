variable "db_subnet_group_name" {
  description = "Subnet Group for RDS"
  type = string
}

variable "vpc_security_group_ids" {
  description = "Security Group for RDS"
  type = list(string)
}