terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.73.0"
    }
  }

}

provider "aws" {
  //shared_credentials_file = "/home/amaury/.aws"
  //profile                 = "devopsaws"
  access_key = "AKIA2ITGRIZ55K7HTAHB"
  secret_key = "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"
  region     = "us-east-1"
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "Amaury"
      maneged-by  = "Terraform"
      Project     = "Test"
    }
  }
}