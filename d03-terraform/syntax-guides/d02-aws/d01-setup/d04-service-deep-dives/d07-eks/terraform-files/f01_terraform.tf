# The `terraform` block is used to configure settings for Terraform 
terraform {

  required_version = ">= 1.17.2"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 6.73.0"
    } 
  }

  # The `backend` block controls where Terraform 
  # will store the `.tfstate` file of this infastructure.
  # If you don't specify a `backend` block, this file will be saved locally.
  # However in this example I'm telling Terraform to store it in a 
  # Amazon S3 bucket
  backend "s3" {

    # The name of the AWS bucket where the `.tfstate` file of this Terraform
    # project will be saved.

    # WARNING: You must create this bucket manually on AWS first before
    # running the `terraform init` command

    bucket = "devops-lab-aws-eks-4bed305c"

    # This is the name of the object that will be saved in an S3 bucket
    key = "terraform.tfstate"

    # This ensures that this file will be encrypted at rest.
    encrypt = true

    # This enables the lockfile to prevent a data race.
    # A data race is when two or more users try to update the state file 
    use_lockfile = true
  }

}
