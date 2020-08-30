provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_eip" "lb" {
  vpc      = true
}