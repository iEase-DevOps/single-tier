provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source      = "./s3"
  bucket_name = var.bucket_name
  environment = "production"
}

module "cloudfront" {
  source      = "./cloudfront"
  bucket_name = var.bucket_name
  domain_name = ""
}

# module "route53" {
#   source         = "./route53"
#   zone_name      = "example.com"
#   domain_name    = ""
#   zone_id        = ""   
#   certificate_arn = ""
# }
