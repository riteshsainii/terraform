resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.testing_vpc.id

  tags = {
    Name = "testing_igw"
  }
}
