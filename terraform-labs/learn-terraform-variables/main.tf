module "vpc" {
   source  = "terraform-aws-modules/vpc/aws"
   version = "2.66.0"

cidr = var.vpc_cidr_block
   ## ...
 }

module "ec2_instances" {
   source = "./modules/aws-instance"

instance_count = var.instance_count
   ## ...

enable_nat_gateway = true
enable_vpn_gateway = var.enable_vpn_gateway
}
