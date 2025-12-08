locals {
  name_prefix = "example-${var.environment}"
}

module "vpc" {
  source             = "../../modules/vpc"
  name               = local.name_prefix
  cidr_block         = var.vpc_cidr
  public_subnets     = var.public_subnets
  availability_zones = var.availability_zones
  tags = {
    Environment = var.environment
  }
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.app_bucket_name
  environment = var.environment
  versioning  = var.app_bucket_versioning
  enable_sse  = var.app_bucket_enable_sse
  force_destroy = false
  tags = { Environment = var.environment }
}

module "ec2" {
  source             = "../../modules/ec2"
  name               = local.name_prefix
  ami                = var.ami
  instance_type      = var.instance_type
  key_name           = var.key_name
  public_key         = var.public_key
  subnet_ids         = module.vpc.public_subnet_ids
  security_group_ids = []
  tags = { Environment = var.environment }
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "app_bucket_arn" {
  value = module.s3.bucket_arn
}
