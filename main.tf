data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

module "s3_bucket" {
  source    = "./terraform_modules/s3-bucket"
  s3_bucket = local.s3_bucket
}