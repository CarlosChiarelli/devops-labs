variable "amis" {
  default = {
    "us-east-1-ubuntu22" = "ami-007855ac798b5175e"
  }
}

variable "instance_type" {
  default = {
    "micro" = "t2.micro"
  }
}
