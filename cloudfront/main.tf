module "cloudfront" {
  source  = "terraform-aws-modules/cloudfront/aws"
  version = "~> 2.0"

  aliases = [var.domain_name]
  default_cache_behavior = {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-${var.bucket_name}"

    forwarded_values = {
      query_string = false
      headers      = ["Origin"]
      cookies      = { forward = "none" }
    }
  }

  origin = {
    domain_name = "${module.s3_bucket.bucket_regional_domain_name}"
    origin_id   = "S3-${var.bucket_name}"
  }

  viewer_certificate = {
    cloudfront_default_certificate = true
  }
}
