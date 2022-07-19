#############################
#vpc creation#
##############################

resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    Name = "main"
  }
}

####################################
#subnet
###################################
resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Subnet_type: "public_subnet"
  }
}








#############################
#gateway#
##############################

resource "aws_internet_gateway" "gwvpc" {
  vpc_id = var.gwvpc_id
  depends_on = [
    aws_vpc.vpc
  ]
}