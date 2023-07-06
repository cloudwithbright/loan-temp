resource "aws_s3_bucket" "sagemaker-storage-buckets" {
  for_each = toset(var.s3-storage)
  bucket   = each.value
}

resource "aws_s3_bucket_versioning" "sgaemaker-storage-buckets-version" {
  for_each = aws_s3_bucket.sagemaker-storage-buckets

  bucket = each.value.id

  versioning_configuration {
    status = var.s3-version
  }

}

