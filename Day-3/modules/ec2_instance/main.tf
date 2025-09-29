provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami          = var.ami_value
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "MyTerraform123"
  }
}
