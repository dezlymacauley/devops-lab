/*

  This block allows you to configure a provider,
  by refering to the custom name that you declared 
  in the `required_providers` section in the `terraform block` 
  in `terraform.tf`

*/
provider "aws" {

  # This sets the default AWS region where AWS resources should be deployed
  # to unless there is a setting on a resource that overrides this setting.
  region = "us-east-1"

  # You can also save yourself time by specifying the default tags that 
  # Terraform should add to all resources created on the AWS platform

  default_tags {
    tags = {
      CreatedUsing = "terraform"
      ProjectName  = "devops-lab"
    }
  }
}
