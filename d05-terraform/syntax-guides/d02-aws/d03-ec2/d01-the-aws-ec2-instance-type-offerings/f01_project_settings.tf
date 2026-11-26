# SECTION: 1 => Data Sources

#______________________________________________________________________________

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings

# For creating a list of valid EC2 (AWS Virtual Machines) that are available
# In the current AWS region

data "aws_ec2_instance_type_offerings" "available" {
  region = "us-east-1"
}
#______________________________________________________________________________

# SECTION: 3 => Variables 

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "devops-lab"
}

variable "ec2_family_selected" {
  description = <<-EOT
    The type of EC2 (AWS Virtual Machine) that will be rented from AWS
    and used in this project.
    
    AWS uses this format:
    Name of a valid EC2 type = family.size

    E.g. `t3.micro` means,
    the `micro` size, of the `t3` family of AWS Virtual Machines.
  EOT
  type        = string
  default     = "t3"
}

variable "ec2_size_selected" {
  description = <<-EOT
    The type of EC2 (AWS Virtual Machine) that will be rented from AWS
    and used in this project.
    
    AWS uses this format:
    Name of a valid EC2 type = family.size

    E.g. `t3.micro` means,
    the `micro` size, of the `t3` family of AWS Virtual Machines.
  EOT
  type        = string
  default     = "micro"
}
#______________________________________________________________________________

# SECTION: 3 => Outputs: Project Variables

#______________________________________________________________________________

output "project_variables" {
  value = {
    project_name        = var.project_name
    ec2_family_selected = var.ec2_family_selected
    ec2_size_selected   = var.ec2_size_selected
  }
}

# You should get something like this back:

/*

project_variables = {
  "project_name" = "devops-lab"
  "type_of_ec2_selected" = "t3.micro"
}

*/
#______________________________________________________________________________

# SECTION: 4 => Locals

#______________________________________________________________________________

locals {

  ec2_type_selected = "${var.ec2_family_selected}.${var.ec2_size_selected}"

  valid_ec2_families = distinct([
    for element in
    data.aws_ec2_instance_type_offerings.available.instance_types :
    split(".", element)[0]
  ])

  valid_ec2_sizes = distinct([
    for element in
    data.aws_ec2_instance_type_offerings.available.instance_types :
    split(".", element)[1]
  ])


  valid_ec2_types = distinct([
    for instance_type in
    data.aws_ec2_instance_type_offerings.available.instance_types :
    instance_type if startswith(
      instance_type, "${split(".", var.ec2_type_selected)[0]}."
    )
  ])
}
#______________________________________________________________________________

# SECTION: 5 => Output: Project Locals

output "project_locals" {
  value = {
    ec2_type_selected  = local.ec2_type_selected
    # valid_ec2_sizes    = local.valid_ec2_sizes
    # valid_ec2_families = local.valid_ec2_families
  }
}

# You should get something like this back:

/*


*/
#______________________________________________________________________________
