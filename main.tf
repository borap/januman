provider "aws" {
  region     = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  cidr = var.vpc_cidr
  azs  = ["us-east-1a", "us-east-1b", "us-east-1c"]

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${module.vpc.vpc_id}"
    cidr_block = var.subnet_cidr1
    map_public_ip_on_launch = "true"
    availability_zone = var.az1
    tags {
        Name = "prod-subnet-public-1"
    }
}

resource "aws_subnet" "prod-subnet-public-2" {
    vpc_id = "${module.vpc.vpc_id}"
    cidr_block = var.subnet_cidr2
    map_public_ip_on_launch = "true"
    availability_zone = var.az2
    tags {
        Name = "prod-subnet-public-2"
    }
}

