resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-0574da719dca65348"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  //subnet_id                   = data.terraform_remote_state.my_data_vpc.outputs.subnet_id
  vpc_security_group_ids      = ["data.terraform_remote_state.vpc.output.security_group_id"]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform"
  }
}