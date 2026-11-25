locals {

  # This is a list
  # Each element in the list is an object that contains two values
  list_of_project_details = [
    {
      project_name = "purple_rose"
      project_id   = 2311
    },
    {
      project_name = "red_gem"
      project_id   = 4082
    }
  ]

}

#______________________________________________________________________________

# Printing out a list of only the project ids of each object
output "list_project_ids" {
  value = [
    for element in local.list_of_project_details:
    element.project_id
  ]
}
#______________________________________________________________________________

# NOTE: How to do this with the splat operator

# Printing out a list of only the project ids
output "list_project_ids_splat_syntax" {
  value = local.list_of_project_details[*].project_id
}
#______________________________________________________________________________
