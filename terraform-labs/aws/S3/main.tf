terraform {
  required_providers {
    aws = {
      version = "~> 2.13.0"
    }
  }

  required_version = "~> 1.0.0"
}

provider "aws" {
  shared_credentials_file = "/home/amaurybsouza/.aws"
  profile                 = "devopsaws"
  region                  = "us-east-1"
}