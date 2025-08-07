output "bucket_id" {
  description = "S3 bucket name (ID)"
  value       = aws_s3_bucket.this.id
}
