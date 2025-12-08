# Simple reusable S3 module that creates a bucket and optional versioning + server-side encryption
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = merge({
    Name        = var.bucket_name
    Environment = var.environment
  }, var.tags)

  force_destroy = var.force_destroy
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  count = var.enable_sse ? 1 : 0
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}
