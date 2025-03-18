terraform {
  required_version = "~> 1.10.1"

  backend "s3" {
    bucket = "gregsharpe-tfstate"
    key    = "gregsharpe1/infrastructure/cloud/aws/terraform.tfstate"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
