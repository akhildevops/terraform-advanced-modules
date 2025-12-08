variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, stage, prod)"
}

variable "acl" {
  type        = string
  description = "Access Control List setting for the S3 bucket"
  default     = "private"
}

variable "versioning" {
  type        = bool
  description = "Enable versioning for the S3 bucket"
  default     = false
}

variable "enable_sse" {
  type        = bool
  description = "Enable server-side encryption for the bucket"
  default     = false
}

variable "sse_algorithm" {
  type        = string
  description = "Server-side encryption algorithm"
  default     = false
}  

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}

variable "force_destroy" {
  type        = bool
  default     = false
}