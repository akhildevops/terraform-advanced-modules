resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = merge({
    Name = "${var.name}-vpc"
  }, var.tags)
}


resource "aws_subnet" "public" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnets[count.index]
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags                    = merge({ Name = "${var.name}-public-${count.index}" }, var.tags)
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
  tags   = merge({ Name = "${var.name}-igw" }, var.tags)
}