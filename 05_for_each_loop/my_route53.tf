resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.my_instance
  zone_id = "${var.zone_id}"
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = [each.value.private_ip]
  allow_overwrite = true
}

# #for public ip 
# resource "aws_route53_record" "frontend_roboshop" {
#   count   = length(var.my_instances_name)
#   zone_id = "${var.zone_id}"
#   name    = "${var.my_instances_name[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 300
#   records = [aws_instance.my_instance[count.index].private_ip]
# }