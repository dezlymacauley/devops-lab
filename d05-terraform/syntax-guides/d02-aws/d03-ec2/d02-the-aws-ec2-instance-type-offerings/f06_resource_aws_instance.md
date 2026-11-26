resource "aws_instance" "test_machine" {
  instance_type = "t2.micro"
  ami           = ami-0652a081025ec9fee
}

output "name" {
 value = aws_instance.test_machine
}
