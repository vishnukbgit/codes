output "vpc_id" {
    value = "${aws_vpc.vpc.id}"
}

output "subnet" {
    value = "${aws_subnet.public_subnet.id}"
  
}