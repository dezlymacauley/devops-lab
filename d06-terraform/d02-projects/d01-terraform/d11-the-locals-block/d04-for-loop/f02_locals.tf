locals {
  list_of_numbers = [2, 4, 6]

  # NOTE: I'm using the word `element` to refer to each thing in the list.

  list_of_doubled_numbers = [
    for element in local.list_of_numbers :
    element * 2
  ]
}

output "list_of_doubled_numbers" {
  value = local.list_of_doubled_numbers
}

/*

list_of_doubled_numbers = [
  4,
  8,
  12,
]

*/
