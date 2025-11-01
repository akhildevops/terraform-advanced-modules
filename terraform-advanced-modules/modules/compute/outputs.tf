output "instance_self_link" {
  value = google_compute_instance.this.self_link
}


output "instance_name" {
  value = google_compute_instance.this.name
}