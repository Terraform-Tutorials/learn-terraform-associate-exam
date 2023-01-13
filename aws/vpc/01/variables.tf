variable "region" {
  description = "my region used to aws provider"
  default     = "sa-east-1"
  type        = string
}

variable "instance_type" {
  description = "my ami to used inside EC2 instance"
  default     = "t2.micro"
  type        = string
}

variable "aws_ami" {
  description = "my ami used inside EC2 instance"
  default     = "ami-0574da719dca65348"
  type        = string
}