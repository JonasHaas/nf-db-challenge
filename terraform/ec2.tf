resource "aws_instance" "main" {
  ami           = "ami-0499632f10efc5a62"
  instance_type = "t2.micro"
  key_name      = "vockey"
  subnet_id     =  aws_subnet.public_subnet_1.id

  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_all_outbound.id,
  ]

  tags = {
    Name = "aurora-stack-main-instance"
  }
}