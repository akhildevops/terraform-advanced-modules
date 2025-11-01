variable "project_id" {
  type        = string
  description = "GCP project id for dev environment"
}


variable "region" {
  type        = string
  description = "GCP region for dev"
  default     = "us-central1"
}


variable "zone" {
  type        = string
  description = "GCP zone for dev"
  default     = "us-central1-a"
}