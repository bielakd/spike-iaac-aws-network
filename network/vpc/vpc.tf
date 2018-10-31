#-----------
# Implements VPC
#-----------

resource "aws_vpc" "glue_vpc" {
	cidr_block = "${var.vpc_cidr}"
	enable_dns_support = true 
	enable_dns_hostnames = true

	tags{
		Name = "${var.vpc_name}"
		stack = "development"
		expiryDate = "2099-12-31"
	}
	lifecycle {
		create_before_destroy = true
	}
}

