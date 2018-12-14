provider "aws" {
	access_key = ""
	secret_key = ""
	region = "us-west-2"
}

module "my_vpc" {
  source = "../modules/vpc"
  vpc_cidr = "10.1.0.0/16"
  tennacy = "default"
  vpc_id = "${module.my_vpc.vpc_id}"
  subnet_cidr = "10.1.1.0/24"
	vpc_name = "dev_vpc"
	subnet_name = "dev_vpc_subnet"
}
