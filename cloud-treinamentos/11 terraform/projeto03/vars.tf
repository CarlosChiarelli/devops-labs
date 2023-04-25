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
