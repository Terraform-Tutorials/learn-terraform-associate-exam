//variables block have 3 optional arguments:
// 1 description (basic description about what variables is going on)
// 2 type (the type of the data)
// 3 default (the default value in the variable)
variable "aws_region" {
  description = "aws region"
  type = string
  default = "us-west-2"
}