output "vpc_self_link" {
  description = "Self link of the created VPC"
  value       = google_compute_network.this.self_link
}


output "subnet_self_link" {
  description = "Self link of the subnet (useful for compute module)"
  value       = google_compute_subnetwork.this.self_link
}