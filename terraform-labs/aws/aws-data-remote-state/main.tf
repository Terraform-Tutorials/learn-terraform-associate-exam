terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.73.0"
    }
  }

  backend "s3" {
    bucket                  = "amaurybsouza-remote-state"
    key                     = "aws-vm/terraform.tfstate"
    region                  = "us-east-1"
    shared_credentials_file = "/home/amaurybsouza/.aws"
    profile                 = "devopsaws"
  }
}

provider "aws" {
  shared_credentials_file = "/home/amaurybsouza/.aws"
  profile                 = "devopsaws"
  region                  = "us-east-1"
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "Amaury"
      maneged-by  = "Terraform"
      Project     = "Test"
    }
  }
}

data "terraform_remote_state" "my_data_vpc" {
  backend = "s3"
  config = {
    bucket = "amaurybsouza-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
    shared_credentials_file = "/home/amaurybsouza/.aws"
    profile                 = "devopsaws"
  }
}