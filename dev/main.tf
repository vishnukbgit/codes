##################################  
# vpc 
##################################
module "myvpc1" {
  source     = "../modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  tenancy= "default"
  vpc_id = "${module.myvpc1.vpc_id}"
  subnet_cidr = "10.0.0.0/24"
  gwvpc_id= "${module.myvpc1.vpc_id}"
}

########################################
# sg group
#########################################

module "sg" {
    source     = "../modules/securityGroup" 
    vpc_id = "${module.myvpc1.vpc_id}"
    sg_cidr="10.0.0.0/24"
}

#####################################
# EC2
#####################################

module "ec2s" {
    source = "../modules/ec2"
    instance_type = "t2.micro"
    ami = "ami-068257025f72f470d"
    subnet_id = "${module.myvpc1.subnet}"
  
}
