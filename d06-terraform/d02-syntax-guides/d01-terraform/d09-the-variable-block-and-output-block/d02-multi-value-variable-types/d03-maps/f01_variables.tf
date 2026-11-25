/*
  ABOUT: Maps 

  1  A map is a collection of key-value pairs
  2. The keys of a map are always strings
  3. Each key must be unique
  4. All the values have to be the same data type
*/

variable "project_details" {
  type        = map(string)
  description = "Project Details"
  default = {
    "ProjectName"    = "purple-rose"
    "TerraformState" = "amazon-s3"
    "BackendAPI"     = "axum-rust"
    "UserInterface"  = "sveltekit-typescript"
    "Database"       = "postgres"
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

# project_details = tomap({
#   "BackendAPI" = "axum-rust"
#   "Database" = "postgres"
#   "ProjectName" = "purple-rose"
#   "TerraformState" = "amazon-s3"
#   "UserInterface" = "sveltekit-typescript"
# })
#______________________________________________________________________________

# EXAMPLE: 2 => Printing out a specific value

output "user_interface" {
  value = var.project_details["UserInterface"]
}

# If you run `terraform output user_interface`,
# you should get this back:
# "sveltekit-typescript"
#______________________________________________________________________________
