terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket         = "my-devops-tf-state-bucket"
    key            = "devops-assessment/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
