locals {
env = "forum"
owner = "Ritesh-DevOps"
}
variable "region" {
default = "ap-south-1"
}
provider "aws" {
region = var.region
}
resource "aws_instance" "instance01" {
ami = "ami-04db49c0fb2215364"
instance_type = "t2.micro"
tags = {
"Name" = "web-server"
"environment" = local.env
"owner" = local.owner
}
}
output "ip" {
value = aws_instance.instance01.public_ip
}