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

  The data is usually given to you in this HCL object format:

  {
    "key" = "value"
    "key" = "value"
    "key" = "value"
  }

  HCL Object (HashiCorp Language Object)

  Data blocks are useful when there is a value that already exists on a 
  provider like AWS, and you wan to use this value in your `.tf` files,
  rather than manually typing it out, or searching for it. 
  _____________________________________________________________________________

*/


# The syntax is:
# data "data source" "A custom name for referencing the data source" {}

# You get the `data source` value from the Terraform docs:
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity.html

# I've decided to call the data source "hcl_object" because that is the data type
# that is returned by the data source.

data "aws_caller_identity" "hcl_object" {}

#______________________________________________________________________________

# SECTION: 2 => Using an `output` block to print out an HCL Object

# An output block can be used to check the data returned by data block 
# is correct.

# The syntax of an `output` block is:
# output "name_of_value_i_want_to_print"
output "aws_caller_identity_hcl_object" {

  # TIP: If you move your cursor to `hcl_object` and press `Ctrl K` you'll
  # see the format of the HCL object
  value = data.aws_caller_identity.hcl_object
}

# To print the output`aws_caller_identity_hcl_object`,
# First update your state by running this command:
# terraform apply -auto-approve

# Then run this command:
# terraform output aws_caller_identity_hcl_object

#______________________________________________________________________________

# This is the ouput you'll get back

/*

{
  "account_id" = "220474267718"
  "arn" = "arn:aws:iam::220474267718:user/dezlymacauley"
  "id" = "220474267718"
  "user_id" = "AIDATGVKKLBDNVYNDIKPW"
}

*/

#______________________________________________________________________________

# If you want to pass this output to a programming language,
# then you'd have to convert the output 
# from an HCL Object to JSON (JavaScript Object Notation.)

# You can use the JSON flag
# terraform output -json aws_caller_identity_hcl_object

# {"account_id":"220474267718","arn":"arn:aws:iam::220474267718:user/dezlymacauley","id":"220474267718","user_id":"AIDATGVKKLBDNVYNDIKPW"}
#______________________________________________________________________________

# SECTION: 3 => How to get a specific value from an HCL object

# E.g. I just want the value of the `account_id` field 
# from the `aws_caller_identity_hcl_object`

output "aws_account_id" {

  # TIP: If you move your cursor to `hcl_object` and press `Ctrl K` you'll
  # see the format of the HCL object
  value = data.aws_caller_identity.hcl_object.account_id
}

# To print the output`aws_account_id`,
# First update your state by running this command:
# terraform apply -auto-approve

# Then run this command:
# terraform output aws_account_id

# You'll get this back:
# "220474267718"

# If you want the raw output without any qoutes
# terraform output -raw aws_account_id; echo
#______________________________________________________________________________
