resource "google_compute_instance" "this" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }


  network_interface {
    subnetwork = var.subnet_link
    access_config {}
  }


  # Simple metadata example to show locals usage compatibility
  metadata = {
    created_by = "terraform-modules-example"
  }
}