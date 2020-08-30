provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_route_table" "route" {
  vpc_id = "vpc-00de973d1212f0461"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0b137ba595ea1553d"
  }

  tags = {
    Name = "myroute"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = "subnet-08fcb403fcc86c31b"
  route_table_id = aws_route_table.route.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = "subnet-03a3719f974ecc7bb"
  route_table_id = aws_route_table.route.id
}