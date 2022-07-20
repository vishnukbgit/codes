resource "aws_instance" "server" {
  tags = {
    Name = "server"
  }
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.public_subnet.id
  key_name= var.key
  #private_ip = "10.0.0.25"
  availability_zone = var.zone
  #security_groups = [var.sgname]
  vpc_security_group_ids = [aws_security_group.securitygroup.id]
  depends_on = [
    aws_security_group.securitygroup
  ]
}
 