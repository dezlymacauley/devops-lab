locals {
  list_of_numbers = [5, 2, 11, 4, 6, 17]

  list_of_even_numbers = [
    for element in local.list_of_numbers :
    # first add the word that you use to refer to each thing in the list,
    # so that it can be used by the `if` statement
    element

    # This means: 
    # `If the element divided by 2 is 0, then add it to list_of_even_numbers`
    if element % 2 == 0

  ]
}

output "list_of_even_numbers" {
  value = local.list_of_even_numbers
}

/*

list_of_even_numbers = [
  2,
  4,
  6,
]

*/
