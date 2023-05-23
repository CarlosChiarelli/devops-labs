resource "aws_security_group" "full_access" {
  name        = "full_access"
  description = "Unlock all ports"
  ingress {
    cidr_blocks      = ["0.0.0.0/0", ]
    description      = "Unlock all ports."
    from_port        = 0
    ipv6_cidr_blocks = ["::/0", ]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }
  egress {
    cidr_blocks      = ["0.0.0.0/0", ]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = ["::/0", ]
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }
  tags = {
    Name = "full_acess"
  }
}
