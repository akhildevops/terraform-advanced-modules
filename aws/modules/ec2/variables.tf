variable "name" {
  type        = string
  description = "Name of the EC2 instance"
}

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type (e.g., t2.micro)"
}

variable "key_name" {
  type        = string
  description = "Name of the key pair to be used for EC2"
}

variable "public_key" {
  type        = string
  description = "Public key content for SSH access"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}
