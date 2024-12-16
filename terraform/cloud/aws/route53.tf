resource "aws_route53_zone" "sharpe_cymru" {
  comment       = "Managed by Terraform"
  force_destroy = "false"
  name          = "sharpe.cymru"

  tags = {
    Account     = "gregsharpe-production"
    Cost        = "0.5"
    Email       = "awsproduction+me@gregsharpe.co.uk"
    Environment = "Production"
  }

  tags_all = {
    Account     = "gregsharpe-production"
    Cost        = "0.5"
    Email       = "awsproduction+me@gregsharpe.co.uk"
    Environment = "Production"
  }
}

resource "aws_route53_zone" "sharpe_wales" {
  comment       = "Managed by Terraform"
  force_destroy = "false"
  name          = "sharpe.wales"

  tags = {
    Account     = "gregsharpe-production"
    Cost        = "0.5"
    Email       = "awsproduction+me@gregsharpe.co.uk"
    Environment = "Production"
  }

  tags_all = {
    Account     = "gregsharpe-production"
    Cost        = "0.5"
    Email       = "awsproduction+me@gregsharpe.co.uk"
    Environment = "Production"
  }
}

resource "aws_route53_zone" "the_rumour_generator_co_uk" {
  comment       = "HostedZone created by Route53 Registrar"
  force_destroy = "false"
  name          = "therumourgenerator.co.uk"
}

resource "aws_route53_zone" "lucy_rae_com" {
  comment       = "HostedZone created by Route53 Registrar"
  force_destroy = "false"
  name          = "lucy-rae.com"
}
