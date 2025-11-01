resource "google_storage_bucket" "this" {
  name     = var.bucket_name
  location = var.location
  labels   = var.labels
  #project  = var.project_id != null ? var.project_id : null
}