module "s3_bucket"  {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.0"

  bucket        = var.bucket_name
  acl           = "public-read"
  website       = {
    index_document = "index.html"
    error_document = "error.html"
  }
  
  tags = {
    "Project"     = "Static Website"
    "Environment" = var.environment
  }
}
