module "vpc" {
  source = "./modules/vpc"
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "rds" {
  source = "./modules/rds"
  db_subnet_group_name = module.vpc.db_subnet_group_name
  vpc_security_group_ids = module.sg.vpc_security_group_ids
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id = module.vpc.subnet_id
  security_groups = module.sg.security_groups
}