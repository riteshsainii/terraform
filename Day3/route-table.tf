resource "aws_route_table" "public_route" {

  vpc_id = aws_vpc.testing_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public-route"
  }
}
resource "aws_route_table_association" "public_assoc" {

  subnet_id      = aws_subnet.testing_subnet.id
  route_table_id = aws_route_table.public_route.id

}