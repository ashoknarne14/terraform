resource "aws_route53_record" "route53" {
  for_each = toset(var.instance_names)
  zone_id = var.hosted_zone
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [aws_instance.ec2[each.key].public_ip] : [aws_instance.ec2[each.key].private_ip]
  allow_overwrite = true
}