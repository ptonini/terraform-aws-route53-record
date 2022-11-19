output "this" {
  value = local.alias ? aws_route53_record.alias[0] : aws_route53_record.this[0]
}