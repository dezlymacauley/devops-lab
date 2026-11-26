# SECTION: 1 => Data Sources

#______________________________________________________________________________

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings

# For creating a list of valid EC2 (AWS Virtual Machines) that are available
# In the current AWS region

data "aws_ec2_instance_type_offerings" "available" {
  region = "us-east-1"
}
#______________________________________________________________________________

# SECTION: 2 => Variables 

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

variable "number_of_virtual_machines" {
  description = "The number of AWS virtual machines (EC2 instances) to rent"
  type    = number
  default = 1
}
#______________________________________________________________________________

# SECTION: 3 => Locals

#______________________________________________________________________________

locals {

  ec2_type_selected = "${var.ec2_family_selected}.${var.ec2_size_selected}"

  # Shows all of the valid options for the EC2 that can be selected for
  # the AWS region speficied in the `aws_ec2_instance_type` data source.
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

  valid_ec2_types_for_ec2_family_selected = distinct([
    for instance_type in
    data.aws_ec2_instance_type_offerings.available.instance_types :
    instance_type if startswith(
      instance_type, "${var.ec2_family_selected}."
    )
  ])

}
#______________________________________________________________________________

# SECTION: 6 => Output

output "project_settings" {
  value = {
    project_name        = var.project_name
    ec2_family_selected = var.ec2_family_selected
    ec2_size_selected   = var.ec2_size_selected
    ec2_type_selected   = local.ec2_type_selected
    number_of_virtual_machines = var.number_of_virtual_machines

    # valid_ec2_types_for_ec2_family_selected = (
    #   local.valid_ec2_types_for_ec2_family_selected
    # )

    # Uncomment the lines below to check what are the valid options 
    # that can be selected for the EC2 family, 
    # and the EC2 size for the current region

    # valid_ec2_families = local.valid_ec2_families
    # valid_ec2_sizes = local.valid_ec2_sizes
  }
}
#______________________________________________________________________________
