resource "aws_vpc" "application_vpc" {
    cidr_block = "10.1.0.0/16"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"    
    
    tags = {
        Name = "${var.vpc_name}"
    }
}