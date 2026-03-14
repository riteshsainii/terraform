resource "aws_vpc" "testing_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "testing_vpc"
  }
}