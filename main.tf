terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }

  backend "s3" {
    bucket = "terraform-iaac-lab-01"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  profile = "admin"
  region  = var.AWS_REGION
}
