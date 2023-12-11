resource "aws_route53_record" "this" {
  count   = var.alias == null ? 1 : 0
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  records = var.records
}

resource "aws_route53_record" "alias" {
  count   = var.alias == null ? 0 : 1
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  alias {
    evaluate_target_health = var.alias.evaluate_target_health
    name                   = var.alias.name
    zone_id                = var.zone_id
  }
}