resource "aws_s3_bucket" "giithub_actions_bucket" {
  bucket = var.s3_bucket
}