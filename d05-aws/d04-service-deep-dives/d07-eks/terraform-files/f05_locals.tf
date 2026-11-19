# This block is used for creating shared values that you want to use
# across your Terraform configuration.

locals {
  name = var.cluster_name
  azs  = slice(data.aws_availability_zones.available.names, 0, 2)
  tags = merge(
    {
      Project   = "eks-foundations"
      ManagedBy = "terraform"
    },
  var.tags)
}
