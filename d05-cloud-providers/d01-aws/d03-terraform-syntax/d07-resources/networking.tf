/*
  _____________________________________________________________________________
  
  ABOUT: VPC

  Think of AWS as one giant landscape that is used by multiple AWS customers.
  A VPC is your own section of land on AWS, that is isolated from other AWS
  customers.

  VPC stands for virtual private network. 
  A VPC is an isolated network on AWS, where you can place your AWS resources,
  and control how those resources communicate with each other,
  and which resources you want to make publically available.
  _____________________________________________________________________________
  
  ABOUT: CIDR Block

  This defines the range of private IP addresses available inside your VPC.

  The syntax is:

  number.number.number.number/number

  Here's an example of a CIDR block

  0.0.0.0/16

  The first numbers are the network address. 
  So `0.0.0.0` is the network address. 

  What are acceptable values for those numbers?

  Each of those numbers must be between 0 and 255 (inclusive).

  This is because each of those numbers is stored as 8 bits.
  8 bits can represent 256 different numbers. 0 to 255 inclusive.


  Examples of valid ipv4 addresses:
  10.0.0.0
  10.0.0.1
  10.0.0.25
  10.0.0.255
  10.0.1.0
  192.168.1.10
  _____________________________________________________________________________

  The number after the slash is called the `CIDR prefix length` 

  So the `16` in `0.0.0.0/16` is the CIDR prefix length

  What are acceptable values?

  Any whole number from 0 to 32
  _____________________________________________________________________________

*/

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    ManagedBy = "Terraform"
    // This would be the name of the directory
    Project = "My Custom Project"
  }
}
