
AWS services have two kinds of billing 

## Fixed Cost
Per hour (Charged whether you are using it or not)

- EC2 (Rented virtual computers from AWS)
- Load balancers
- Monthly fee for

_______________________________________________________________________________

## Usage-Driven Cost
Per Resource usage (E.g. per request, per GB)
Charged only when you are using it.

Certain things fall into both camps
E.g. Internet gateway. You get billed once per hour to keep it active,
and then you pay per the hour.

Public addresses.

Pricing calculator

Cost explorer
_______________________________________________________________________________

## How to do this practically

_______________________________________________________________________________

Go to this link
```
https://calculator.aws/
```

Click `Create estimate`
_______________________________________________________________________________

Select the following options

- Check `Search by location type`

- Choose a location type: `Region`
- Choose region: `US East (N.Virginia)` aka `us-east-1` 
- Find service: `EKS` 
_______________________________________________________________________________

You'll be taking to this page `create estimate: Configure Amazon EKS`

Select the following options

- Description: `EKS Cluster`
- Choose a location type: `Region`
- Choose region: `US East (N.Virginia)` aka `us-east-1` 

EKS Cluster Pricing Standard Support
Number of EKS Clusters: 1

If you click show calculations, you should see this:
```
1 Clusters x 0.10 USD per hour x 730 hours per month = 73.00 USD
EKS Standard Support Cost (monthly): 73.00 USD
```

_______________________________________________________________________________

Click `Save and add service`

You'll see this at the bottom:
- Upfront cost: 0.00 
- USDMonthly cost: 73.00 
- USDTotal 12 months cost 876.00 USD(Includes upfront cost
_______________________________________________________________________________

## Now check the cost of the worker nodes 

Worker nodes are the computers will run in the Kubernetes.

You can rent virtual computers on AWS using 
the EC2 service (Elastic Cloud Compute).

- Find service: `EKS` 
- Go to Amazon EC2 and click `Configure`
_______________________________________________________________________________

You'll be taking to this page `create estimate: Configure Amazon EC2`

Select the following options

- Description: `EKS Worker Nodes`
- Choose a location type: `Region`
- Choose region: `US East (N.Virginia)` aka `us-east-1` 

- Workloads: `Constant usage`
- Number of Instances: `2` (This means 1 node in each AWS availability zone)
- Search Instance type: `t3.small`
_______________________________________________________________________________
