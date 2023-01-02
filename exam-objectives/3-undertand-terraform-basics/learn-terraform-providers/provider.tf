terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.73.0"
    }
  }
}

# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/amaurybsouza/.aws"
  profile                 = "devopsaws"
}

# Additional provider configuration for west coast region; resources can
# reference this as `aws.west`.
provider "aws" {
  alias  = "saopaulo"
  region = "sa-east-1"
  shared_credentials_file = "/home/amaurybsouza/.aws"
  profile                 = "devopsaws"
}
