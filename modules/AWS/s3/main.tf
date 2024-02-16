resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket
}

resource "aws_s3_bucket_website_configuration" "website_configuration" {
  bucket = aws_s3_bucket.bucket.bucket

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}

resource "aws_s3_bucket_acl" "public_acl" {
  acl    = "public-read"
  bucket = aws_s3_bucket.bucket.id
}

resource "aws_s3_bucket_object" "object" {
  count = var.upload_object ? length(var.object) : 0

  bucket = aws_s3_bucket.bucket.bucket
  etag   = lookup(var.object[count.index], "etag", null)
  key    = lookup(var.object[count.index], "key", null)
  source = lookup(var.object[count.index], "source", null)
}
