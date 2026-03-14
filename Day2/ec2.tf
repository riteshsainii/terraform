resource "aws_instance" "server" {
  for_each      = var.servers
  ami           = "ami-019715e0d74f695be"
  instance_type = each.value
  key_name      = var.key_name

  tags = {
    Name = each.key
  }
}
