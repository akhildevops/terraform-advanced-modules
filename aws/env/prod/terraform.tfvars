environment        = "prod"
aws_region         = "us-east-1"

vpc_cidr           = "10.20.0.0/16"
public_subnets     = ["10.20.1.0/24","10.20.2.0/24","10.20.3.0/24"]
availability_zones = ["us-east-1a","us-east-1b","us-east-1c"]

ami                = "ami-0c94855ba95c71c99"
instance_type      = "t3.medium"
key_name           = "prod-key"
public_key         = "ssh-rsa AAAAB3...prod_public_key"

app_bucket_name         = "example-prod-app-bucket-<your-unique-suffix>"
app_bucket_versioning   = true
app_bucket_enable_sse   = true
