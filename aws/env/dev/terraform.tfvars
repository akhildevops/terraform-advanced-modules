environment        = "dev"
aws_region         = "us-west-1"
aws_profile        = "default"

vpc_cidr           = "10.0.0.0/16"
public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones = ["us-west-1a", "us-west-1c"]

ami                = "ami-03978d951b279ec0b" # example — replace for your region/account
instance_type      = "t2.micro"
key_name           = "new-key"

bucket_name         = "example-dev-app-bucket-ag"
versioning   = true
