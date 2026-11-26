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
  default     = "t3"
}

variable "ec2_type_selected" {

}

#______________________________________________________________________________

# SECTION: 3 => Outputs: Project Variables

#______________________________________________________________________________

output "project_variables" {
  value = {
    project_name        = var.project_name
    ec2_family_selected = var.ec2_family_selected
    ec2_size_selected   = var.ec2_size_selected
    ec2_type_selected   = var.ec2_type_selected
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
    valid_ec2_sizes    = local.valid_ec2_sizes
    valid_ec2_families = local.valid_ec2_families
    valid_ec2_types    = local.valid_ec2_types
  }
}

# You should get something like this back:

/*

"valid_ec2_families" = tolist([
    "m5dn",
    "c6id",
    "r6idn",
    "c8g",
    "m7a",
    "m8gn",
    "trn1",
    "c6gn",
    "m8a",
    "i3en",
    "r6in",
    "c8gb",
    "c8in",
    "r8i-flex",
    "c5ad",
    "r4",
    "m7i",
    "r8idn",
    "x8g",
    "i7ie",
    "m7gd",
    "m6i",
    "m6a",
    "m6in",
    "r8g",
    "m6gd",
    "c9g",
    "r7g",
    "r8i",
    "r5ad",
    "r5a",
    "x8i",
    "r8idb",
    "r6id",
    "x2idn",
    "i4g",
    "m8id",
    "c8gn",
    "c6i",
    "c8i",
    "r6g",
    "m9gd",
    "c7i-flex",
    "m8ine",
    "g5",
    "i8ge",
    "m5a",
    "c7a",
    "r7gd",
    "i8g",
    "c8a",
    "is4gen",
    "m8ib",
    "r7a",
    "m5n",
    "r5dn",
    "i3",
    "inf1",
    "c9gd",
    "r6a",
    "p5",
    "r9g",
    "c7i",
    "x1e",
    "r8gn",
    "r8in",
    "m8g",
    "r5d",
    "t3",
    "m8gb",
    "m8idn",
    "c7g",
    "m6g",
    "m3",
    "c5",
    "x1",
    "t2",
    "c7gn",
    "r6i",
    "g6e",
    "c8gd",
    "mac-m4",
    "p4de",
    "m7g",
    "r8id",
    "m5d",
    "c3",
    "r5n",
    "r5",
    "r5b",
    "h1",
    "c6a",
    "r7iz",
    "r7i",
    "m8in",
    "t4g",
    "c8ine",
    "m8gd",
    "u-6tb1",
    "x2gd",
    "x2iezn",
    "c6in",
    "c8ib",
    "c8id",
    "g4dn",
    "t3a",
    "c8i-flex",
    "r8gb",
    "x2iedn",
    "m8i",
    "d3",
    "c5n",
    "c5d",
    "r6gd",
    "m6id",
    "c6g",
    "mac2-m2",
    "hpc7g",
    "trn1n",
    "m9g",
    "g5g",
    "m8azn",
    "m4",
    "m5",
    "i7i",
    "g7",
    "r8a",
    "m6idn",
    "g7e",
    "m8idb",
    "im4gn",
    "m5zn",
    "m5ad",
    "r9gd",
    "r8ib",
    "t8i",
    "mac-m4pro",
    "r8gd",
    "m2",
    "t9g",
    "inf2",
    "g6",
    "p6-b200",
    "d2",
    "c5a",
    "c4",
    "z1d",
    "i4i",
    "c6gd",
    "c7gd",
    "u7i-12tb",
    "u7in-16tb",
    "m7i-flex",
    "u-3tb1",
    "m1",
    "r3",
    "p4d",
    "f2",
    "d3en",
    "i2",
    "mac2-m1ultra",
    "m8i-flex",
    "u7i-8tb",
    "mac-m4max",
    "p5en",
    "c1",
    "u7in-24tb",
    "vt1",
    "t1",
    "g6f",
    "u7i-6tb",
    "mac1",
    "mac2",
    "p3dn",
    "mac-m3ultra",
    "gr6",
    "u7in-32tb",
    "p6-b300",
    "gr6f",
    "mac2-m2pro",
])

"valid_ec2_sizes" = tolist([
    "metal",
    "32xlarge",
    "metal-48xl",
    "8xlarge",
    "2xlarge",
    "4xlarge",
    "xlarge",
    "12xlarge",
    "24xlarge",
    "16xlarge",
    "48xlarge",
    "3xlarge",
    "medium",
    "large",
    "96xlarge",
    "18xlarge",
    "metal-96xl",
    "metal-24xl",
    "112xlarge",
    "micro",
    "metal-12xl",
    "small",
    "nano",
    "224xlarge",
    "56xlarge",
    "9xlarge",
    "metal-16xl",
    "6xlarge",
    "64xlarge",
    "10xlarge",
    "metal-32xl",
])

*/
#______________________________________________________________________________
