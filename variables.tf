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

variable "ami" {                   
	default = "ami-0e38b48473ea57778"
}
  
variable "instance_type" {
	default = "t2.nano"

}
variable "subnet" {
	default = "subnet-085bedd7b7346c294"

}
variable "sg" {

	default = "sg-0a3d079089468cf29"
	type        = list(string)

}
variable "key"  {
	default = "ScalrTest"

}

