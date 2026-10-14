/*
  The `terraform` block is used to configure the Terraform project
*/
terraform {

  // This is where you list the infastructure providers 
  // that you will be interacting with
  required_providers {

    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }

}

/*
  The `resource` block is where you list the resources that you want 
  to create.

  The syntax is:

  resource "type_of_resource" "a custom label to identify this resource"

*/
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-sample-bucket"
}

resource "aws_s3_bucket" "my_bucket2" {
  
}

// When you want to create a piece of AWS infastructure that is not managed
// by you. Managed somewhere else but you want to use it in your project
data "aws_s3_bucket" "my_external_bucket" {
  bucket = "not-managed-by-us"
}

//_____________________________________________________________________________

// SECTION: Variables


//_____________________________________________________________________________
