variable "instance_name" {
  type        = string
  description = "Name for the compute instance"
}


variable "machine_type" {
  type        = string
  description = "Machine type e.g. e2-medium"
  default     = "e2-small"
}


variable "zone" {
  type        = string
  description = "Zone for the compute instance"
}


variable "subnet_link" {
  type        = string
  description = "Self-link or id of the subnet to attach the instance to"
}