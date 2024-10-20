terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "test-buc-sand-dummy01"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
