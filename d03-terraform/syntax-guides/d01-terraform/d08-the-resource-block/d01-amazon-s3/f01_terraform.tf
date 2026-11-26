terraform {
  required_version = "~> 1.17.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.73.0"
    }

  }

  backend "s3" {
    region = "us-east-1"
    bucket = "devops-lab-220474267718-us-east-1-an"
    key    = "terraform.tfstate"
  }
}
