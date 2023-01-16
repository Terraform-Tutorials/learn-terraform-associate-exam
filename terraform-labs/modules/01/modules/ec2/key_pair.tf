resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")

  tags = {
    Name       = "my-key-aws"
    managed_by = "terraform"
  }
}