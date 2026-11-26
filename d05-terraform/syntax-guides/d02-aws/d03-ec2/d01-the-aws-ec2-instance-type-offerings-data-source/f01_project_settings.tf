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

    valid_ec2_types_for_ec2_family_selected = (
      local.valid_ec2_types_for_ec2_family_selected
    )

    # Uncomment the lines below to check what are the valid options 
    # that can be selected for the EC2 family, 
    # and the EC2 size for the current region

    # valid_ec2_families = local.valid_ec2_families
    # valid_ec2_sizes = local.valid_ec2_sizes
  }
}
#______________________________________________________________________________

# NOTE: These are the valid EC2 sizes for the `us-east-1` region

/*

"valid_ec2_sizes" = tolist([
    "24xlarge",
    "metal",
    "micro",
    "metal-24xl",
    "16xlarge",
    "xlarge",
    "12xlarge",
    "48xlarge",
    "medium",
    "8xlarge",
    "4xlarge",
    "2xlarge",
    "32xlarge",
    "large",
    "metal-48xl",
    "96xlarge",
    "6xlarge",
    "18xlarge",
    "112xlarge",
    "metal-96xl",
    "nano",
    "small",
    "56xlarge",
    "metal-12xl",
    "224xlarge",
    "3xlarge",
    "9xlarge",
    "64xlarge",
    "metal-16xl",
    "metal-32xl",
    "10xlarge",
])

*/
#______________________________________________________________________________

# NOTE: These are the valid EC2 families for the `us-east-1` region

/*

"valid_ec2_families" = tolist([
    "im4gn",
    "m7g",
    "u7i-12tb",
    "c3",
    "r8i",
    "c6i",
    "r5n",
    "x8g",
    "vt1",
    "c7g",
    "x2idn",
    "m5dn",
    "i8g",
    "inf1",
    "r8idb",
    "r6a",
    "m8ib",
    "m8azn",
    "r8idn",
    "u-6tb1",
    "c9gd",
    "c7i-flex",
    "x8i",
    "i8ge",
    "x2iezn",
    "c5a",
    "m8idb",
    "m6in",
    "m5ad",
    "m1",
    "t9g",
    "m7a",
    "c8gb",
    "m8i",
    "m7i",
    "inf2",
    "c7a",
    "r8gd",
    "r7i",
    "c5n",
    "c8gd",
    "x2gd",
    "m7gd",
    "c8in",
    "m6g",
    "r7gd",
    "c6id",
    "r8g",
    "r6idn",
    "r9g",
    "r9gd",
    "m5d",
    "c8a",
    "x1e",
    "r8gb",
    "m8gd",
    "m9g",
    "u7in-24tb",
    "m8id",
    "r5d",
    "r8a",
    "trn1",
    "c8i-flex",
    "c6gd",
    "m6id",
    "m9gd",
    "t4g",
    "m5zn",
    "x2iedn",
    "m6gd",
    "mac2",
    "r8ib",
    "h1",
    "c9g",
    "c7i",
    "r7a",
    "c6gn",
    "c5d",
    "r7g",
    "m8idn",
    "m8a",
    "r5a",
    "r5b",
    "m8gb",
    "r3",
    "d3",
    "g5",
    "r6i",
    "r8id",
    "c6a",
    "r8i-flex",
    "r4",
    "r6gd",
    "mac1",
    "c7gn",
    "r6in",
    "r6id",
    "m5",
    "hpc7g",
    "c4",
    "g6",
    "r8gn",
    "g5g",
    "c8id",
    "m4",
    "c5",
    "i7i",
    "t3a",
    "c6g",
    "m8g",
    "m8in",
    "r5dn",
    "c1",
    "t3",
    "m5a",
    "c8ine",
    "c8gn",
    "g7",
    "r5ad",
    "i4i",
    "m6idn",
    "mac-m4max",
    "m7i-flex",
    "c8g",
    "i4g",
    "g6e",
    "m8gn",
    "r8in",
    "m6i",
    "c6in",
    "r5",
    "g7e",
    "p6-b200",
    "is4gen",
    "m8ine",
    "c7gd",
    "c5ad",
    "c8i",
    "c8ib",
    "x1",
    "p5",
    "mac-m4pro",
    "p4d",
    "r7iz",
    "u7i-6tb",
    "r6g",
    "t8i",
    "i2",
    "g4dn",
    "d3en",
    "z1d",
    "m5n",
    "i7ie",
    "u7in-16tb",
    "f2",
    "m6a",
    "u7i-8tb",
    "u-3tb1",
    "i3en",
    "p5en",
    "t2",
    "i3",
    "m2",
    "mac-m4",
    "g6f",
    "trn1n",
    "mac2-m2",
    "p4de",
    "m3",
    "mac2-m1ultra",
    "m8i-flex",
    "t1",
    "d2",
    "p6-b300",
    "u7in-32tb",
    "mac2-m2pro",
    "gr6",
    "mac-m3ultra",
    "gr6f",
    "p3dn",
])
*/
#______________________________________________________________________________
