resource "aws_instance" "frontend" {
  for_each = var.components
  ami = var.ami
  instance_type = each.value[instance_type]
  vpc_security_group_ids = var.sg_id
  tags = {
    Name = "${each.value[name]}"
  }
}

#resource "aws_route53_record" "frontend" {
#  zone_id = var.zone_id
#  name    = "frontend"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}

