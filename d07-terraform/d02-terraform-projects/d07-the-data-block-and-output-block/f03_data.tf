/*
  ABOUT: The `data` block, and `output` block

  _____________________________________________________________________________

  SECTION: 1 => Data Block

  The data block is used when you want to use Terraform to request data
  from a specific provider like AWS.
  
  A good example would be asking Terraform to ask AWS 
  to send you your AWS caller Id. 

  Your AWS caller Id contains information such as the Id number of your
  AWS account, the user id that you are using to login to AWS,
  and the the `arn` of that user.

  The data is usually given to you in this format:

  {
    "key" = "value"
    "key" = "value"
    "key" = "value"
  }

  Data blocks are useful when there is a value that already exists on a 
  provider like AWS, and you wan to use this value in your `.tf` files,
  rather than manually typing it out, or searching for it. 
  _____________________________________________________________________________

  SECTION: 2 => Output Blocks

  These blocks can be used to check the data returned by data block 
  is correct.
  _____________________________________________________________________________
*/


# The syntax is:
# data "data source" "A custom name for referencing the data source" {}

# You get the `data source` value from the Terraform docs:
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity.html

This `aws_caller_identity` data source in Terraform,
that return 

# I've decided to call the data source "json" becauase 
# that is the name of the type of data that the AWS API returns to me.
data "aws_caller_identity" "json" {}

# The syntax of an `output` block is:
# output "name_of_value_i_want_to_print"
output "aws_caller_identity_json" {
  value = data.aws_caller_identity.json
}

# To print the output`aws_caller_identity_json`,
# run this command:
# terraform apply -auto-approve

# Then run this command:
# terraform output aws_caller_identity_json

#______________________________________________________________________________

# This is the ouput you'll get back

{
  "account_id" = "220474267718"
  "arn" = "arn:aws:iam::220474267718:user/dezlymacauley"
  "id" = "220474267718"
  "user_id" = "AIDATGVKKLBDNVYNDIKPW"
}

 */
#______________________________________________________________________________
