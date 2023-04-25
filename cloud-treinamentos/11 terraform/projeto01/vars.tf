variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string
}

variable "access_key" {
  description = "Your AWS Access Key"
  default     = "secret"
  type        = string
}

variable "secret_key" {
  description = "Your AWS Secret Key"
  default     = "secret"
  type        = string
}

variable "sg_cidrs" {
  type    = list(string)
  default = ["187.56.55.230/32", "187.56.55.231/32"]
}

variable "amis" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0aa2b7722dc1b5612"
    "sa-east-1" = "ami-002a875adefcee7fc"
  }
}
