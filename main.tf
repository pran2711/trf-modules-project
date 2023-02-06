module "myvpc" {
  source = "./modules/vpc-module"
  cidr-block = var.cidr-block
  vpc-name = var.vpc-name
}

module "mysubnet" {
  source = "./modules/subnet-module"
  vpc-id = module.myvpc.vpcid
  cidr= var.cidr
  subnet-name = var.subnet-name
}

module "mysecg" {
  source = "./modules/secg-module"
  vpc-id = module.myvpc.vpcid
  subnet-name = var.secg-name
}

module "mynic" {
  source = "./modules/nic-module"
  private-ip = var.private-ip
  subnet-id = module.mysubnet.subnetid
  vsecg = module.mysecg.secid
}

module "myinstance" {
  source = "./modules/instance-module"
  ami-id = var.ami-id
  instance-type = var.instance-type
  instance-name = var.instance-name
  nic-id = module.mynic.nicid
}
