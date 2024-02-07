resource "aws_s3_bucket" "giithub_actions_bucket" {
  bucket = var.s3_bucket
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}