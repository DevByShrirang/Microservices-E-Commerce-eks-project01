provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "mycompany-billing-dev01"

  tags = {
    Name        = "mycompany-billing-dev01"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "mycompany-billing-dev02"

  tags = {
    Name        = "mycompany-billing-dev02"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}
