provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = 	"vpc-00de973d1212f0461"

  tags = {
    Name = "myig"
  }
}