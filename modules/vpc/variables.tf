variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "tenancy" {
    default = "default"
  
}
variable "vpc_id" {}

variable "subnet_cidr" {}

variable "gwvpc_id" {}
