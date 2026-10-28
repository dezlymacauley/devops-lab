# AWS Regions and Availability Zones
_______________________________________________________________________________

## AWS Regions

An AWS region is a cluster of data centers that are in a specific location.

E.g. The AWS region `us-east-1` is a cluster of data centers that are in
the location `United States (N.Virginia)`

_______________________________________________________________________________

Each region will have its own set of AWS services.

Factors to consider when choosing a region.

1. Availability 
- Some services may not be available in a certain region.

You can use this list to see which AWS services are available for each region
```
https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/
```

2. Proximity to your customers
- Your application will be more performant if they deployed in a region that
is closer to customers.
_______________________________________________________________________________

## AWS Availability Zones

The data centers that make up an AWS region are split into groups.

E.g. The AWS region `us-east-1` has the availability zones

```
us-east-1a

us-east-1b

us-east-1c

us-east-1d

us-east-1e

us-east-1f
```

These availability zones are isolated from each other to ensure 
reliable access of services in the region.

E.g. if `us-east-1a` has an issue, 
then the rest of the availability zones will ensure the `us-east-1` region
is still functional.
_______________________________________________________________________________
