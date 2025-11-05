resource "aws_route53_record" "www" {
  count   = length(var.my_instances_name)
  zone_id = "${var.zone_id}"
  name    = "${var.my_instances_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.my_instance[count.index].private_ip]
}