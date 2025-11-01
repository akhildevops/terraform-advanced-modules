variable "vpc_name" {
  type        = string
  description = "Name for the VPC"
}


variable "subnet_name" {
  type        = string
  description = "Name for the subnet"
}


variable "cidr_range" {
  type        = string
  description = "CIDR for the subnet"
}


variable "region" {
  type        = string
  description = "Region where resources should be created"
}