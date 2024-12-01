module "route53" {
  source  = "terraform-aws-modules/route53/aws"
  version = "~> 2.0"

}
  
  resource "aws_route53_record" "alias" {
    zone_id = var.zone_id
    name    = var.domain_name
    type    = "A"
  
    alias {
      name                   = module.cloudfront.cf_domain_name
      zone_id                = module.cloudfront.cf_hosted_zone_id
      evaluate_target_health = true
    }
}
