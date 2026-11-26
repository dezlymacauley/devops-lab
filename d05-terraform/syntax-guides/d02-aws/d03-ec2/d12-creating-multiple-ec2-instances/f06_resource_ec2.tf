# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "from_count" {
  count = var.number_of_virtual_machines
}
