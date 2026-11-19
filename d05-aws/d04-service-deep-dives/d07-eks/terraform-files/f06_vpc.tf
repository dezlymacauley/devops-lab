module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "~> 6.6.1"

  name = local.name
  cidr = var.vpc_cidr

  azs = local.azs

  # NOTE: You can get these answers from `terraform console`

  # cidrsubnet(cidr, newbits, netnum)

  # cidrsubnet("10.0.0.0/16", 4, 0)
  # will give you: 10.0.0.0/20

  # cidrsubnet("10.0.0.0/16", 4, 1)
  # will give you: 10.0.16.0/20
}
