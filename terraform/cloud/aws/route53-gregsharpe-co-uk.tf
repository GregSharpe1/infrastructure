resource "aws_route53_zone" "gregsharpe_co_uk" {
  comment       = "Managed by Terraform"
  force_destroy = "false"
  name          = "gregsharpe.co.uk"
}

# TODO(gsharpe): Need to import
# resource "aws_route53_record" "gregsharpe_co_uk_email_mx" {
#   multivalue_answer_routing_policy = "false"
#   name                             = "gregsharpe.co.uk"
#   records                          = ["1 aspmx.l.google.com","10 alt3.aspmx.l.google.com", "10 alt4.aspmx.l.google.com", "5 alt1.aspmx.l.google.com", "5 alt2.aspmx.l.google.com"]
#   ttl                              = "60"
#   type                             = "MX"
#   zone_id                          = aws_route53_zone.gregsharpe_co_uk.zone_id
# }

# resource "aws_route53_record" "gregsharpe_co_uk_keybase_txt" {
#   multivalue_answer_routing_policy = "false"
#   name                             = "gregsharpe.co.uk"
#   records                          = ["keybase-site-verification=XnwaAnCMubCLO2ORF5PVXX28GSBPE1sqQiT2soHgLYM"]
#   ttl                              = "60"
#   type                             = "TXT"
#   zone_id                          = aws_route53_zone.gregsharpe_co_uk.zone_id
# }

# resource "aws_route53_record" "gregsharpe_co_uk_screenshot" {
#   multivalue_answer_routing_policy = "false"
#   name                             = "screenshot.gregsharpe.co.uk"
#   records                          = ["d2s4mmof630c62.cloudfront.net"]
#   ttl                              = "60"
#   type                             = "CNAME"
#   zone_id                          = aws_route53_zone.gregsharpe_co_uk.zone_id
# }
