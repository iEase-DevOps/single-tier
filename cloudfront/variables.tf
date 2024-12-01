variable "domain_name" {
  description = "Domain name for the site (used in CloudFront alias)"
  type        = string
}
variable "bucket_name" {
    default = "staticweb"
    description = "Name of the S3 bucket"
    type        = string
}
