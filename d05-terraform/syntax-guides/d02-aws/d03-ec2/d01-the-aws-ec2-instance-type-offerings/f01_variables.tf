variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "devops-lab"
}

variable "type_of_ec2_selected" {
  description = <<-EOT
    The type of EC2 (virtual machine) that will be rented from AWS
    If you want to see what are valid types
  EOT
  type        = string
  default     = "t3.micro"
}

#______________________________________________________________________________

output "variables" {
  value = {
    project_name         = var.project_name
    type_of_ec2_selected = var.type_of_ec2_selected
  }
}
#______________________________________________________________________________
