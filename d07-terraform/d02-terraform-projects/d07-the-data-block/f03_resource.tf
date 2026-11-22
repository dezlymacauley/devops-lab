resource "aws_s3_bucket" "media_uploads" {
  bucket_namespace = "account-regional"
  region           = "us-east-1"

  bucket = "media-uploads-220474267718-us-east-1-an"

  tags = {
    Name = "media-uploads-220474267718-us-east-1-an"
  }
}
