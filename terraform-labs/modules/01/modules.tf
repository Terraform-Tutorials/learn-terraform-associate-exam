module "my_infra" {
  source        = "./modules/ec2"
  aws_ami       = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  region        = "sa-east-1"
  tags          = { "Name" = "lab-terraform-tst", "prod" = "Desenvolvimento" }
}