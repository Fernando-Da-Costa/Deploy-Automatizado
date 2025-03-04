resource "aws_s3_bucket" "bucket_dev" {
  bucket = var.bucket_name

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_dev_block" {
  bucket                  = aws_s3_bucket.bucket_dev.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "bucket_dev_policy" {
  bucket = aws_s3_bucket.bucket_dev.id

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "AWS": "arn:aws:iam::897729099134:root" # Substitua pelo ARN correto
        },
        "Action": "s3:PutBucketPolicy",
        "Resource": "arn:aws:s3:::bucket-dev-fernandoooo"
      }
    ]
  })
}

