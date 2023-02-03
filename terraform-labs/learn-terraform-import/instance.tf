resource "aws_instance" "terraformlabs" {
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.micro"
}