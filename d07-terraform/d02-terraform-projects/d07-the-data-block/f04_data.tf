/*
  ABOUT: The `data` block

  This is used when you want to get a value from a provider,
  rather than defining that value manually.

  This is useful for getting information about Terraform-managed infastructure 
  that has already been created, 
  or getting information about an infastructure that already exists but
  is not managed by Terraform.
*/

# The syntax is:
# data "The type of resource" "A custom name for referencing the data block"

# TODO: Don't run this

data "aws_vpc" "name" {
  filter {
    name = "tag:Name"
    values = ["prod-vpc"]
  } 
}
