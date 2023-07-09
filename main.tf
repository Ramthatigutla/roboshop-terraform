module "instances" {
  for_each = var.components
  source   = "git::https://github.com/Ramthatigutla/tf-module-app.git"
  component     = each.key
  env = var.env
  tags = merge(each.value["tags"], var.tags)
}
