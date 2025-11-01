provider "google" {
  project = var.project_id
  region  = var.region
}


locals {
  env_prefix = "prod"
  common_labels = {
    environment = local.env_prefix
    owner       = "platform-team"
  }
}


# Example: demonstrate module versioning by using a git ref for storage module
# (In real usage, this would point to a published tag in a real repo.)
module "network" {
  source      = "../../modules/network"
  vpc_name    = "${local.env_prefix}-vpc"
  subnet_name = "${local.env_prefix}-subnet"
  cidr_range  = "10.20.0.0/24"
  region      = var.region
}


module "storage" {
  # Example of versioned module from a Git host. Use ?ref=v1.0.0 in practice.
  source      = "../../modules/storage"
  bucket_name = "${local.env_prefix}-data-bucket-${var.project_id}"
  labels      = local.common_labels
}


module "compute" {
  source        = "../../modules/compute"
  instance_name = "${local.env_prefix}-vm"
  machine_type  = "n2-standard-2"
  zone          = var.zone
  subnet_link   = module.network.subnet_self_link
}


output "prod_bucket" {
  value = module.storage.bucket_name
}


output "prod_vm" {
  value = module.compute.instance_name
}