/*

  ABOUT: => Objects

  1  An object is a collection of variable types

*/

variable "project_details" {
  description = "Details about the project"
  type = object({
    is_production_ready = bool
    project_name        = string
    project_id          = number
  })

  default = {
    is_production_ready = false
    project_name        = "emerald-city"
    project_id          = 1382
  }

}
#______________________________________________________________________________

# EXAMPLE: 1 => Printing out all the values

output "project_details" {
  value = var.project_details
}

# If you run these commands:
# terrform init
# terraform apply -auto-approve
# terraform output 

# You should get back the default values:

/*

project_details = {
  "is_production_ready" = false
  "project_id" = 1382
  "project_name" = "emerald-city"
}

*/
#______________________________________________________________________________

# EXAMPLE: 2 => Printing out a specific value

output "project_id" {
  value = var.project_details["project_id"]
}

# If you run `terraform output project_id
# you should get this back:
# project_id = 1382
#______________________________________________________________________________
