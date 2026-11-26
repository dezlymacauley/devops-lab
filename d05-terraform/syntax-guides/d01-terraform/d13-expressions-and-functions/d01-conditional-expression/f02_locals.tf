locals {

  computers = 4

  # The syntax of a conditional expression is:
  # condition ? value_to_set_if_true : value_to_set_if_false

  # status_message = local.computers > 2 ? "Let's go" : "You need more computers"

  # If you want to make this easier to read:
  status_message = (
    local.computers > 2 ?
    "Let's go" : 
    "You need more computers"
  )
}

output "status_message" {
  value = local.status_message
}

/*

list_of_even_numbers = [
  2,
  4,
  6,
]

*/
