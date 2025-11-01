variable "bucket_name" {
  type        = string
  description = "Name of the GCS bucket to create"
}


variable "location" {
  type        = string
  description = "Bucket location (e.g. US, EU)"
  default     = "US"
}


variable "labels" {
  type        = map(string)
  description = "Labels to apply to the bucket"
  default     = {}
}