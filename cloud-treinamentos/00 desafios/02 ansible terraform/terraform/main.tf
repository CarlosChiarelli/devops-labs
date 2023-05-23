provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "machine_wordpress" {
  ami           = var.amis["us-east-1-ubuntu22"]
  instance_type = var.instance_type.micro
  key_name      = "terraform"
  tags = {
    Name = "ansible_machine_with_wordpress"
  }
  vpc_security_group_ids = [aws_security_group.full_access.id]
}
