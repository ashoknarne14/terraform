resource "aws_route53_record" "route53" {
  count = length(var.instance_name)
  zone_id = var.hosted_zone
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.ec2[count.index].private_ip]
}