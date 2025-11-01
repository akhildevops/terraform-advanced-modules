variable "project_id" {
  type        = string
  description = "GCP project id for prod environment"
}


variable "region" {
  type        = string
  description = "GCP region for prod"
  default     = "us-central1"
}


variable "zone" {
  type        = string
  description = "GCP zone for prod"
  default     = "us-central1-b"
}