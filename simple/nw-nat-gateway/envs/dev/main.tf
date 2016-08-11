provider "aws" {
  region = "${var.region}"
}

module "dev" {
  source = "../.."

  name     = "${var.name}"
  region   = "${var.region}"
  vpc_cidr = "${var.vpc_cidr}"
  azs      = "${data.aws_availability_zones.az.names}"
}
