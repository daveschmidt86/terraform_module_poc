resource "aws_vpc" "main" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "${var.tennacy}"

    tags {
      Name = "${var.vpc_name}"
    }
}

resource "aws_subnet" "main" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags {
    Name = "${var.subnet_name}"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}
