module "test" {
  source = "git::https://github.com/Ramthatigutla/tf-module-app.git"
  env = var.env
}
