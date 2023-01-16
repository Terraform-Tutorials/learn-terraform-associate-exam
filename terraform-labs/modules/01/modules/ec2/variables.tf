variable "region" {
  description = "my region used to aws provider"
  type        = string
}

variable "instance_type" {
  description = "my ami to used inside EC2 instance"
  type        = string
}

variable "aws_ami" {
  description = "my ami used inside EC2 instance"
  type        = string
}

variable "tags" {
  type = map(any)
}