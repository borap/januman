variable "region" {
  default = "us-east-2"
}

variable "vpc_cidr" {

}

variable "name" {}

variable "cidr" {
 default = "10.1.0.0/24"
}

variable "subnet_cidr1" {
default = "10.1.0.0/28"
}

variable "subnet_cidr2" {
default = "10.1.0.16/28"
}

variable "az1" {
default = "us-east-2a"
}

variable "az2" {
default = "us-east-2b"
}
