/*
  
  ABOUT: f03_variables.tf

  _____________________________________________________________________________
  If you want to print out these variables,
  run this command:

  terraform apply
  _____________________________________________________________________________

  Then run this command to enter the terraform prompt:
  terraform console
  _____________________________________________________________________________

  You can then print out variables like this:

  var.name_of_varible

  _____________________________________________________________________________
*/

variable "cluster_name" {
  description = <<-EOF
    The name of the EKS cluster.
    This will be used as a prefix for related resources
  EOF

  type    = string
  default = "eks-foundations"
}

variable "vpc_cidr" {
  description = <<-EOF
    CIDR block for the VPC
  EOF

  type    = string
  default = "10.0.0.0/16"
}

variable "tags" {
  description = "additional tags applied to every resource"
  type        = map(string)

  default = {}

  # default = {
  #   "key" = "value"
  # }
}
