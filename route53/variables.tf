variable "domain_name" {
  description = "Domain name for the static site"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the SSL/TLS certificate"
  type        = string
}
variable "zone_name" {
  description = "Route 53 hosted zone name"
  type        = string
}

variable "zone_id" {
  description = "The ID of the hosted zone"
  type        = string
}