# Sanitized Terraform example for portfolio use only.
# This is intentionally minimal and does not represent the complete original team environment.

resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "${var.project_name}-frontend-"

  tags = {
    Project = var.project_name
    Purpose = "portfolio-example"
  }
}

resource "aws_dynamodb_table" "places" {
  name         = "${var.project_name}-places"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "place_id"

  attribute {
    name = "place_id"
    type = "S"
  }

  tags = {
    Project = var.project_name
    Purpose = "portfolio-example"
  }
}
