
resource "aws_subnet" "public_eu_west_1a" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-1a"
}


resource "aws_subnet" "public_eu_west_1b" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1b"
}

resource "aws_subnet" "private_eu_west_1a" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "10.0.10.0/24"
  availability_zone = "eu-west-1a"
}

resource "aws_subnet" "private_eu_west_1b" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "10.0.11.0/24"
  availability_zone = "eu-west-1b"
}
