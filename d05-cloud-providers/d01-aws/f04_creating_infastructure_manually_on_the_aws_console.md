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
