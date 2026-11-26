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

variable "type_of_ec2_selected" {
  description = <<-EOT
    The type of EC2 (virtual machine) that will be rented from AWS
    and used in this project.
  EOT
  type        = string
  default     = "t3.micro"
}
#______________________________________________________________________________

# SECTION: 2 => Locals

locals {

  list_of_virtual_machine_size_suffixes = distinct([
    for t in data.aws_ec2_instance_type_offerings.available.instance_types :
    split(".", t)[1]
  ])


  virtual_machines_available_to_rent = [
    for instance_type in distinct(
      data.aws_ec2_instance_type_offerings
      .available.instance_types
    ) :
    instance_type if endswith(
      instance_type, ".${var.type_of_ec2_selected}"
    )
  ]
}

#______________________________________________________________________________

# SECTION: 4 => Outputs

output "variables" {
  value = {
    project_name         = var.project_name
    type_of_ec2_selected = var.type_of_ec2_selected
  }
}

# You should get something like this back:

/*

variables = {
  "project_name" = "devops-lab"
  "type_of_ec2_selected" = "t3.micro"
}

*/


# output "locals" {
#   
# }

#______________________________________________________________________________

# output "list_of_virtual_machine_size_suffixes" {
#   value = sort(local.list_of_virtual_machine_size_suffixes)
# }

# You'll get this back

/*

list_of_virtual_machine_size_suffixes = tolist([
  "10xlarge",
  "112xlarge",
  "12xlarge",
  "16xlarge",
  "18xlarge",
  "224xlarge",
  "24xlarge",
  "2xlarge",
  "32xlarge",
  "3xlarge",
  "48xlarge",
  "4xlarge",
  "56xlarge",
  "64xlarge",
  "6xlarge",
  "8xlarge",
  "96xlarge",
  "9xlarge",
  "large",
  "medium",
  "metal",
  "metal-12xl",
  "metal-16xl",
  "metal-24xl",
  "metal-32xl",
  "metal-48xl",
  "metal-96xl",
  "micro",
  "nano",
  "small",
  "xlarge",
])

*/

#______________________________________________________________________________

# output "virtual_machines_available_to_rent" {
#   value = local.virtual_machines_available_to_rent
# }

/*

virtual_machines_available_to_rent = [
  "t4g.micro",
  "t3.micro",
  "t9g.micro",
  "t2.micro",
  "t8i.micro",
  "t1.micro",
  "t3a.micro",
]

*/
#______________________________________________________________________________
