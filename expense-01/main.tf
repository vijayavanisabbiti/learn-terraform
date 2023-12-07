resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a7e4cd41da18b1c7"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z01843807JDTGXSQ26S6"
  name    = "frontend"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a7e4cd41da18b1c7"]
  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z01843807JDTGXSQ26S6"
  name    = "backend"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a7e4cd41da18b1c7"]
  tags = {
    Name = "mysql"
  }
}


resource "aws_route53_record" "mysql" {
  zone_id = "Z01843807JDTGXSQ26S6"
  name    = "mysql"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}