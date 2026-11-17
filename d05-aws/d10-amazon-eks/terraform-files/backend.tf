# The `terraform` block is used to configure settings for Terraform 
terraform {

  # The `backend` block controls where Terraform 
  # will store the `.tfstate` file of this infastructure.
  # If you don't specify a `backend` block, this file will be saved locally.
  # However in this example I'm telling Terraform to store it in a 
  # Amazon S3 bucket
  backend "s3" {

    # Amazon S3 stores files as objects.
    # This is the name of the object that will be saved in an S3 bucket
    # on AWS.
    key = "amazon_eks_training/terraform.tfstate"

    # This ensures that this file will be encrypted at rest.
    encrypt = true

    # This enables the lockfile to prevent a data race.
    # A data race is when two or more users try to update the state file 
    use_lockfile = true
  }

}
