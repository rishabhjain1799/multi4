provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_nat_gateway" "gw" {
  allocation_id = "eipalloc-01b7589bbffe49fd3"
  subnet_id     = "subnet-03a3719f974ecc7bb"

  tags = {
    Name = "my NAT"
  }
}