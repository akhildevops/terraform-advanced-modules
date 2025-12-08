variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, stage, prod)"
}

variable "aws_region" {
  type        = string
  description = "AWS region for resource deployment"
}

variable "aws_profile" {
  type        = string
  description = "AWS CLI profile to use"
  default     = ""
}

# vpc inputs

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for subnets"
}



# ec2 inputs

variable "ami" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type (e.g., t3.micro)"
}

variable "public_key" {
  type        = string
  description = "Public key content for SSH access"
}

variable "key_name" {
  type        = string
  description = "Key pair name to attach to the EC2 instance"
}

# s3 inputs

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "versioning" {
  type        = bool
  description = "Enable or disable bucket versioning"
}

variable "force_destroy" {
  type        = bool
  description = "Force destroy bucket even if not empty"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the S3 bucket"
  default     = {}
}


