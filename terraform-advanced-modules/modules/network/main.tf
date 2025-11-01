# Create a custom-mode VPC (no auto subnets)
resource "google_compute_network" "this" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}


# Single subnet to demonstrate linking
resource "google_compute_subnetwork" "this" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr_range
  region        = var.region
  network       = google_compute_network.this.id
}