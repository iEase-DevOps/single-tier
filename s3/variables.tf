variable "bucket_name" {
  default = "staticweb"
  description = "Name of the S3 bucket"
  type        = string
}
variable "environment" {
  description = "Deployment environment (dev/prod)"
  type        = string
  default     = "dev"
}
