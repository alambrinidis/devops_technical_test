
resource "aws_route_table" "my_vpc_public" {
  vpc_id = "${aws_vpc.my_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.my_vpc_igw.id}"
  }
}

resource "aws_route_table_association" "my_vpc_eu_west_1a_public" {
  subnet_id      = "${aws_subnet.public_eu_west_1a.id}"
  route_table_id = "${aws_route_table.my_vpc_public.id}"
}

resource "aws_route_table_association" "my_vpc_eu_west_1b_public" {
  subnet_id      = "${aws_subnet.public_eu_west_1b.id}"
  route_table_id = "${aws_route_table.my_vpc_public.id}"
}