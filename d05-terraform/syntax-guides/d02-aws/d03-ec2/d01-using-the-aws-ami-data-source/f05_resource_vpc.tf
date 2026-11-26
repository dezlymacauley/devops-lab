# SECTION: 1 => VPC

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    ProjectName = local.project_name
    Name = "${local.project_name}-main-vpc"
  }

}
#______________________________________________________________________________

# SECTION: 2 => Subnets

# https://registry.terraform.io/providers/hashicorp/awS/latest/docs/resources/subnet

resource "aws_subnet" "subnet" {
  count  = var.number_of_subnets
  vpc_id = aws_vpc.main_vpc.id

  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    ProjectName = local.project_name
    Name = "${local.project_name}-subnet-${count.index}"
  }
}
#______________________________________________________________________________
