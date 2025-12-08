environment        = "stage"
aws_region         = "us-east-1"

vpc_cidr           = "10.10.0.0/16"
public_subnets     = ["10.10.1.0/24","10.10.2.0/24"]
availability_zones = ["us-east-1a","us-east-1b"]

ami                = "ami-0c94855ba95c71c99"
instance_type      = "t3.small"
key_name           = "stage-key"
public_key         = "ssh-rsa AAAAB3...stage_public_key"

app_bucket_name         = "example-stage-app-bucket-<your-unique-suffix>"
app_bucket_versioning   = true
app_bucket_enable_sse   = false
