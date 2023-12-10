module "expense" {
  for_each = var.components
  source   = "./modules"


  ami           = var.ami
  instance_type = each.value["instance_type"]
  name          = each.value["name"]
  sg_id         = var.sg_id
  zone_id       = var.zone_id
}