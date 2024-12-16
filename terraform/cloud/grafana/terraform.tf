terraform {
  required_version = "~> 1.10.1"

  backend "s3" {
    bucket = "gregsharpe-tfstate"
    key    = "gregsharpe1/infrastructure/cloud/grafana/terraform.tfstate"
    region = "eu-west-1"
  }

  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "3.15.2"
    }
  }
}
