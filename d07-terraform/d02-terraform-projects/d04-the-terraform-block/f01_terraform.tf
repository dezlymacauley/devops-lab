terraform {
  required_version = "~> 1.17.2"

  required_providers {

    /*
      The syntax is:

      the-name-that-you-will-use-to-refer-to-the-provider {
        source = "value"
        version = "value"
      }

      You get these values from the Terraform Registry:
      https://registry.terraform.io/providers/hashicorp/aws/latest

    */
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.73.0"
    }

  }

  backend "s3" {
    # The name of the s3 bucket where the state file of 
    # this project will be stored.

    # The AWS region where the s3 bucket can be found
    region = "us-east-1"

    # The name of the S3 bucket

    # NOTE: You need to create the  s3 bucket manually first in that region
    bucket = "devops-lab-220474267718-us-east-1-an"

    # This the name that you want the statefile to be saved as,
    # when it is created or updated in the s3 bucket
    key = "terraform.tfstate"

  }

}
