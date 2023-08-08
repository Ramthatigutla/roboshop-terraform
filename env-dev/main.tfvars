env = "dev"

#components = {
#
#  frontend = {
#    tags = { Monitor = "true", env = "dev" }
#  }
#  mongodb = {
#    tags = { env = "dev" }
#  }
#  catalogue = {
#    tags = { Monitor = "true", env = "dev" }
#  }
#  redis = {
#    tags = { env = "dev" }
#  }
#  user = {
#    tags = { Monitor = "true", env = "dev" }
#  }
#  cart = {
#    tags = { Monitor = "true", env = "dev" }
#  }
#  mysql = {
#    tags = { env = "dev" }
#  }
#  shipping = {
#    tags = { Monitor = "true", env = "dev" }
#  }
#  rabbitmq = {
#    tags = { env = "dev" }
#  }
#  payment = {
#    tags = { Monitor = "true", env = "dev" }
#  }
#
#}
 tags = {
   company_name  = "TRR Tech"
   business      = "ecommerce"
   business_unit = "retail"
   cost_center   = "322"
   project_name  = "roboshop"
 }

vpc = {
  main = {
    cidr_block = "10.0.0.0/16"
    subnets  = {
      web    = { cidr_block = ["10.0.0.0/24", "10.0.1.0/24"] }
      app    = { cidr_block = ["10.0.2.0/24", "10.0.3.0/24"] }
      db     = { cidr_block = ["10.0.4.0/24", "10.0.5.0/24"] }
      public = { cidr_block = ["10.0.6.0/24", "10.0.7.0/24"] }
    }
  }
}
default_vpc_id = "vpc-013dc13513422cb08"
default-vpc-rt = "rtb-05a5dd0fe1e8d63ba"
allow_ssh_cidr = [ "172.31.1.199/32" ]
zone_id = "Z01993782D642NRX02CFC"
kms_key_id  = "efa47460-43f4-4740-89f1-f34515224c3a"
kms_key_arn = "arn:aws:kms:us-east-1:424375767930:key/efa47460-43f4-4740-89f1-f34515224c3a"
rabbitmq = {
  main = {
    instance_type = "t3.small"
    component = "rabbitmq"
  }
}
rds = {
  main = {
    component     = "mysql"
    engine                 = "aurora-mysql"
    engine_version         = "5.7.mysql_aurora.2.11.3"
    database_name          = "dummy"
  }
}