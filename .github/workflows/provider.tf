provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile                 = "terraformlabs"
  region                  = var.aws_region
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "Amaury"
      maneged-by  = "Terraform"
      Project     = "Test"
    }
  }
}