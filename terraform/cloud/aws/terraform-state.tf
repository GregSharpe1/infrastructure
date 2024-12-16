resource "aws_s3_bucket" "terraform_state" {
  bucket              = "gregsharpe-tfstate"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false

  tags = {
    Email       = "aws+me@gregsharpe.co.uk"
    Environment = "Production"
  }

  tags_all = {
    Email       = "aws+me@gregsharpe.co.uk"
    Environment = "Production"
  }

}

resource "aws_dynamodb_table" "terraform_state" {
  attribute {
    name = "LockID"
    type = "S"
  }

  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = "false"
  hash_key                    = "LockID"
  name                        = "gregsharpe-tfstate-lock"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  table_class    = "STANDARD"

  tags = {
    Email       = "aws+me@gregsharpe.co.uk"
    Environment = "Production"
  }

  tags_all = {
    Email       = "aws+me@gregsharpe.co.uk"
    Environment = "Production"
  }

  write_capacity = "1"
}
