provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_instance" "web" {
  ami           = "ami-004a955bfb611bf13"
  instance_type = "t2.micro"
  key_name = "lw"
  vpc_security_group_ids = ["sg-0a5c3e9e36109cac6"]
  subnet_id = "subnet-08fcb403fcc86c31b" 

  tags = {
    Name = "WordpressOS"
  }
}

resource "aws_instance" "web1" {
  ami           = "ami-08706cb5f68222d09"
  instance_type = "t2.micro"
  key_name = "lw"
  vpc_security_group_ids = ["sg-0a5c3e9e36109cac6"]
  subnet_id = "subnet-03a3719f974ecc7bb" 

  tags = {
    Name = "MySQL-OS"
  }
}


resource "null_resource" "nulllocal1"  {

	provisioner "local-exec" {
	    command = "start chrome  ${aws_instance.web.public_ip}"
  	}
  }