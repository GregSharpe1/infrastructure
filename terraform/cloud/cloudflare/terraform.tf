terraform {
  required_version = "~> 1.10.1"

  backend "s3" {
    bucket = "gregsharpe-tfstate"
    key    = "gregsharpe1/infrastructure/cloud/cloudflare/terraform.tfstate"
    region = "eu-west-1"
  }

  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.0.0-alpha1"
    }
  }
}
