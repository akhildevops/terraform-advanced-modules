terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}


provider "google" {
  project = var.project_id
  region  = var.region
}


# locals to keep naming consistent and reusable
locals {
  env_prefix = "dev" # this can alternatively be injected from tfvars if you prefer
  common_labels = {
    environment = local.env_prefix
    owner       = "akhil"
  }
}


# Compose modules from local path
module "network" {
  source      = "../../modules/network"
  vpc_name    = "${local.env_prefix}-vpc"
  subnet_name = "${local.env_prefix}-subnet"
  cidr_range  = "10.10.0.0/24"
  region      = var.region
}


module "storage" {
  source      = "../../modules/storage"
  bucket_name = "${local.env_prefix}-data-bucket-${var.project_id}"
  location    = var.region
  labels      = local.common_labels
}


module "compute" {
  source        = "../../modules/compute"
  instance_name = "${local.env_prefix}-vm"
  machine_type  = "e2-medium"
  zone          = var.zone
  subnet_link   = module.network.subnet_self_link
}


# Outputs for convenience
output "dev_bucket" {
  value = module.storage.bucket_name
}


output "dev_vm" {
  value = module.compute.instance_name
}