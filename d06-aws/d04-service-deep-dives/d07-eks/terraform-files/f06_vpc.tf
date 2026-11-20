/*

  ABOUT: f06_vpc.tf

  #____________________________________________________________________________
  
  # NOTE: Using the `cidrsubnet` funnction

  # cidrsubnet(cidr, newbits, netnum)
  #____________________________________________________________________________

  # `newbits`

  # This specifies the additional bits to add onto the CIDR prefix length
  # E.g. If cidr = "10.0.0.0/16"
  # and `newbits` = 4, then the cidr prefix length of the subnet is 16 + 4,
  # which is 20
  #____________________________________________________________________________
 
  # You can confirm this by using the command:
  # `terraform console`

  # cidrsubnet("10.0.0.0/16", 4, 0)
  # will give you: 10.0.0.0/20

  # cidrsubnet("10.0.0.0/16", 4, 1)
  # will give you: 10.0.16.0/20

  #____________________________________________________________________________
*/

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 6.6.1"

  name = local.name
  cidr = var.vpc_cidr

  azs = local.azs

  private_subnets = [for i, az in local.azs : cidrsubnet(var.vpc_cidr, 4, i)]

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

}
