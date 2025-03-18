import {
  to = aws_s3_bucket.terraform_state
  id = "gregsharpe-tfstate"
}

import {
  to = aws_dynamodb_table.terraform_state
  id = "gregsharpe-tfstate-lock"
}

import {
  to = aws_route53_zone.sharpe_cymru
  id = "Z0336255F8V2PAOHK96R"
}

import {
  to = aws_route53_zone.sharpe_wales
  id = "Z0336786312J3M8UH3ZOO"
}

import {
  to = aws_route53_zone.the_rumour_generator_co_uk
  id = "Z10100542M9429SYTZQVP"
}

import {
  to = aws_route53_zone.gregsharpe_co_uk
  id = "Z3L4PK1QV9Y3GP"
}

import {
  to = aws_route53_zone.lucy_rae_com
  id = "ZZX5ZRUYD8VFB"
}
