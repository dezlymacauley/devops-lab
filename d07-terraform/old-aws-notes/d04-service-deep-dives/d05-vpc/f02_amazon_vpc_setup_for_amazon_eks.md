# Amazon VPC Setup for a Amazon EKS Setup
_______________________________________________________________________________

## What is `Amazon VPC`?

Amazon VPC stands for `Virtual Private Cloud`

Think of the AWS as a massive digital landscape that Amazon rents out to 
customers from all arround the world. 

The section of land that each AWS customer is renting to build 
their application on top of is known as a VPC. 

Each customer can setup their VPC according to their needs,
and further divide it into sections called subnets (which is basically
like dividing the land you are renting into smaller sections).

The `Private` in `Virtual Private Cloud` referers to the fact that the AWS
infastructure that each customer deploys in the VPC, is isolated from other
customers.

_______________________________________________________________________________

## Basic Networking

From a networking perspective, the VPC acts as a gated community.

You control who gets enter, and also what is allowed to exit the VPC.
_______________________________________________________________________________

## Why would you want subnets?

A front area near the main gate, 
where visitors are allowed to walk up (like a shop or reception desk)

A back area deep inside, 
where only residents are allowed (like homes or a vault)

Public subnet
Private subnet
_______________________________________________________________________________
