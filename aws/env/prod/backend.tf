terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket" # change this
    key            = "terraform/${var.environment}/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "my-terraform-locks"        # change this
    encrypt        = true
  }
}
