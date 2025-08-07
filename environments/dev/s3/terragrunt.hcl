terraform {
  source = "../../../modules/s3"
}

inputs = {
  bucket_name       = "dev-hitesh-s3-bucket"
  enable_versioning = true
  environment       = "dev"
}
