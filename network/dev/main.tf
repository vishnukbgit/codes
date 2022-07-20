module "network" {
    source = "../task"
    vpc_cidr   = "10.0.0.0/16"
    tenancy= "default"
    subnet_cidr = "10.0.0.0/24"
    subnet_cidr2 = "10.0.1.0/24"
    sg_cidr = "0.0.0.0/0"
   
}
