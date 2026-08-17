output "frontend_bucket_name" {
  description = "Sanitized example S3 bucket name"
  value       = aws_s3_bucket.frontend.bucket
}

output "places_table_name" {
  description = "Sanitized example DynamoDB table name"
  value       = aws_dynamodb_table.places.name
}
