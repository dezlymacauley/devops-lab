# SECTION: 1 => Data Sources

#______________________________________________________________________________

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings

# For creating a list of valid EC2 (AWS Virtual Machines) that are available
# In the current AWS region

data "aws_ec2_instance_type_offerings" "available" {
  region = "us-east-1"
}
#______________________________________________________________________________

# ABOUT: The `aws_ami` data source

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami

# AMI stands for "Amazon Machine Image"

# This is a template that AWS uses to install the operating system on the
# virtual machine that you are renting.

# In this example, 
# I want to install version 22.04 of the Ubuntu operating system,
# which is a type of Linux operating system.

# This is one of the most installed operating systems on AWS virtual machines. 

data "aws_ami" "ubuntu" {

  # NOTE: `owners` and `most_recent` 
  # are the bare minimum needed to use this data source

  # Ubuntu AMIs are published by a company called `Canonical`
  # The number 099720109477 is their AWS account Id
  # This ensures that the search results only include official Ubuntu AMIs
  # and not third-party Ubuntu AMIs
  owners = ["099720109477"]

  # This tells Terraform to only return the most reccent Ubuntu AMI
  most_recent = true
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
    # project_name        = var.project_name
    # ec2_family_selected = var.ec2_family_selected
    # ec2_size_selected   = var.ec2_size_selected
    # ec2_type_selected   = local.ec2_type_selected
    # number_of_virtual_machines = var.number_of_virtual_machines

    # TODO: Continue here
    # aws_ami_ubuntu

  output "aws_ami_ubuntu" {
    value = data.aws_ami.ubuntu
  }

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

# NOTE: This is what gets returned without a filter

/*

aws_ami_ubuntu = {
  "allow_unsafe_filter" = tobool(null)
  "architecture" = "arm64"
  "arn" = "arn:aws:ec2:us-east-1::image/ami-0fc21756b9eebcb2b"
  "block_device_mappings" = toset([
    {
      "device_name" = "/dev/sda1"
      "ebs" = tomap({
        "delete_on_termination" = "true"
        "encrypted" = "false"
        "iops" = "0"
        "snapshot_id" = "snap-0ba1d05085ce5a348"
        "throughput" = "0"
        "volume_initialization_rate" = "0"
        "volume_size" = "8"
        "volume_type" = "gp2"
      })
      "no_device" = ""
      "virtual_name" = ""
    },
    {
      "device_name" = "/dev/sdb"
      "ebs" = tomap({})
      "no_device" = ""
      "virtual_name" = "ephemeral0"
    },
    {
      "device_name" = "/dev/sdc"
      "ebs" = tomap({})
      "no_device" = ""
      "virtual_name" = "ephemeral1"
    },
  ])
  "boot_mode" = "uefi"
  "creation_date" = "2026-11-26T00:29:41.000Z"
  "deprecation_time" = "2028-11-26T00:29:41.000Z"
  "description" = "Canonical, Ubuntu Minimal Pro, 22.04 LTS, arm64 jammy image"
  "ena_support" = true
  "executable_users" = tolist(null)
  "filter" = toset(null)
  "hypervisor" = "xen"
  "id" = "ami-0fc21756b9eebcb2b"
  "image_id" = "ami-0fc21756b9eebcb2b"
  "image_location" = "amazon/ubuntu-pro-minimal/images/hvm-ssd/ubuntu-jammy-22.04-arm64-pro-minimal-20261125"
  "image_owner_alias" = "amazon"
  "image_type" = "machine"
  "imds_support" = ""
  "include_deprecated" = false
  "kernel_id" = ""
  "last_launched_time" = ""
  "most_recent" = true
  "name" = "ubuntu-pro-minimal/images/hvm-ssd/ubuntu-jammy-22.04-arm64-pro-minimal-20261125"
  "name_regex" = tostring(null)
  "owner_id" = "099720109477"
  "owners" = tolist([
    "099720109477",
  ])
  "platform" = ""
  "platform_details" = "Ubuntu Pro Linux"
  "product_codes" = toset([])
  "public" = true
  "ramdisk_id" = ""
  "region" = "us-east-1"
  "root_device_name" = "/dev/sda1"
  "root_device_type" = "ebs"
  "root_snapshot_id" = "snap-0ba1d05085ce5a348"
  "sriov_net_support" = "simple"
  "state" = "available"
  "state_reason" = tomap({
    "code" = "UNSET"
    "message" = "UNSET"
  })
  "tags" = tomap({})
  "timeouts" = null 
  "tpm_support" = ""
  "uefi_data" = tostring(null)
  "usage_operation" = "RunInstances:0g00"
  "virtualization_type" = "hvm"
}
*/
#______________________________________________________________________________
