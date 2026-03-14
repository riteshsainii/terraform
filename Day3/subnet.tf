resource "aws_subnet" "testing_subnet" {
  vpc_id            = aws_vpc.testing_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "public subnet"
  }
}