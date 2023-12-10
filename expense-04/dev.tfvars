ami = "ami-03265a0778a880afb"
zone_id = "Z01843807JDTGXSQ26S6"
sg_id = ["sg-0a7e4cd41da18b1c7"]

components = {
  frontend = {
    name = "frontend"
    instance_type = "t3.micro"
  }
  backend = {
    name = "backend"
    instance_type = "t3.micro"
  }
  mysql = {
    name = "mysql"
    instance_type = "t3.micro"
  }
}