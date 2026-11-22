/*
  ABOUT: The `data` block, and `output` block

  _____________________________________________________________________________

  SECTION: 1 => Data Block

  The data block is used to make an API call to a specific provider,
  and get back some information about infastructure that already exists
  on that platform.

  A good example would be the account ID of your AWS account.

  Data blocks are useful when there's a value that you want to use in your
  Terraform configuration, that already exists on a platform but you don't
  want to to manually type out this value or go to the platform 
  and search for it.
  _____________________________________________________________________________

  SECTION: 2 => Output Blocks

  These blocks can be used to check the value of a data block to confirm
  that it is correct.
  _____________________________________________________________________________
*/


/*

The syntax is:
data "data source" "A custom name for referencing the data source" {}

You get the `data source` value from the Terraform docs:
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity.html

This `aws_caller_identity` data source in Terraform,
is actually just a wrapper arround this command from the AWS CLI:
aws sts get-caller-identity

If you run that command you should get a JSON object back with the following
information:

{
    "UserId": "AIDATGVKKLBDNVYNDIKPW",
    "Account": "220474267718",
    "Arn": "arn:aws:iam::220474267718:user/dezlymacauley"
}

*/

# I've decided to call the data source "json" becauase 
# that is the name of the type of data that the AWS API returns to me.
data "aws_caller_identity" "json" {}

# The syntax of an `output` block is:
# output "name_of_value_i_want_to_print"
output "aws_caller_identity_json" {
  value = data.aws_caller_identity.json
}

# If I wanted the 
