# Creating infastructure manually on the AWS console
_______________________________________________________________________________

## Creating a VPC (Virtual Private Cloud)

What are VPCs?

They are partions of AWS infastructure, where you can deploy resources,
and ensure that they are logically isolated from other AWS customers.

This VPC will contain two subnets:
1. A subnet that will have public access to the internet.
2. A private subnet
_______________________________________________________________________________

Search for the `VPC` service.

Then click `VPCs`

Ensure that the region to `eu-north-1` aka Europe (Stockholm)

You should see a `VPC ID` for the default `VPC` of that region. 

_______________________________________________________________________________

Click `Create VPC` to create a new `VPC`

_______________________________________________________________________________

Use these settings:

- Resources to create: `VPC only`
- Name tag: `demo-vpc`
- IPv4 CIDR block: `IPv4 CIDR manual input`
- IPv4 CIDR: `10.0.0.0/16`

##### Note: The CIDR block sizes should always be between `/16` and `/28`

- IPv6 CIDR block: No IPv6 CIDR block
- Tenancy: Default
- VPC encryption control ($): None

### Tags
- Key: `Name`, Value: `demo-vpc`
_______________________________________________________________________________

##### Note: Creating a VPC is free
_______________________________________________________________________________

You should see a `Main route table` after creating the VPC.

This will be the default route table for all of the subnets that do not an
explicit route table associated with them.
_______________________________________________________________________________

On the left sidebar, click on `subnets`

You should have 3 default subnets for the `eu-north-1` region.
_______________________________________________________________________________

### How to create a subnet

Click `Create subnet`

Use these setting:

- VPC ID: Select the `demo-vpc` from the drop down menu
- Subnet name: `public-subnet`
- Availability Zone: `eu-north-1a`
- IPv4 VPC CIDR block: `10.0.0.0/16`
- IPv4 subnet CIDR block: `10.0.0.0/24`

##### Note: You should see `256 IPs` next to it afterwards

_______________________________________________________________________________

`10.0.0.0/24` explained

- The first three numbers are fixed. `10.0.0`
- Only the fourth number can be changed.

- If you want to create a new subnet, then you would change the 3rd number.
- You would create a new subnet when you want to prevent 
overlapping CIDR blocks.
_______________________________________________________________________________

Click `Add new subnet` (This is to create another subnet. The private subnet)

_______________________________________________________________________________

Use these settings:

- Subnet name: `private subnet`
- Availability Zone: `eu-north-1b`
- IPv4 VPC CIDR block: `10.0.0.0/16`

##### `Remember the first subnet was 10.0.0.0/24` 
so you change the third number when trying to create a new subnet

- IPv4 subnet CIDR block: `10.0.1.0/24`

##### Note: You should see `256 IPs` next to it afterwards

_______________________________________________________________________________

Click `Create subnet` to create both of these subnets for the `demo-vpc`
_______________________________________________________________________________
