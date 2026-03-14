resource "aws_instance" "server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.testing_subnet.id

  vpc_security_group_ids = [
    aws_security_group.testing_sg.id
  ]
  key_name                    = "ritesh"
  associate_public_ip_address = true

  tags = {
    Name = "CREATED BY HARDIK"
  }
}
