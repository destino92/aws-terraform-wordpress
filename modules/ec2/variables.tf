variable "subnet_id" {
  description = "Subnet ID for EC2"
  type = string
}

variable "security_groups" {
  description = "Security Group for EC2"
  type = list(string)
}