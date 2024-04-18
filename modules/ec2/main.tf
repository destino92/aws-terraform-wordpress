#EC2
resource "aws_instance" "wordpress" {
  ami                         = "ami-053b0d53c279acc90"
  instance_type               = "t2.micro"
  key_name                    = "destino-ec2-test"
  subnet_id                   = var.subnet_id
  security_groups             = var.security_groups
  associate_public_ip_address = true

  tags = {
    Name = "wp_ec2_destino"
  }

}