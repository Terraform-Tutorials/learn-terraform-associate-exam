resource "aws_instance" "web" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.awskey.key_name

  tags = {
    Name       = "Amaury"
    managed_by = "terraform"
  }
}

resource "aws_key_pair" "awskey" {
  key_name   = "deployer"
  public_key = file("./deployer.pub")

  tags = {
    Name       = "my-key"
    managed_by = "terraform"
  }

}

