variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "The region of instance to be deployed"
}


#####################
# ec2
#####################
variable "instance_type" {
    default = "t2.medium"
}
variable "ami" {
    default = "ami-05102cba58d91b74a"
}

variable "key" {
  default = "terraform"
  
}
  
  
  #################################
  # sg
  ###############################

variable "sg_cidr" {
  #  default = "10.0.0.0/24"
}
variable "sgname" {
  default= "sg"
}

##########################
# vpc
##########################

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "tenancy" {
    default = "default"
  
}
variable "zone" {
  default = "ap-south-1a"
}

variable "subnet_cidr" {}
variable "subnet_cidr2" {}


