

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
- Search Instance type: `t3.medium`
_______________________________________________________________________________

#### These are the specs for the computers

## t3.medium
### Attribute	Value
- Instance Name:	t3.medium
- vCPUs:	2
- Memory:	4 GiB
- Network Performance:	Up to 5 Gigabit
- Storage:	EBS only
- On-Demand Hourly Cost:	$0.0416
- Current Generation:	Yes
- Potential Effective Hourly Cost:	$0.0156
- Potential Savings:	62%

## t3.small
### Attribute	Value
- Instance Name:	t3.small
- vCPUs:	2
- Memory:	2 GiB
- Network Performance:	Up to 5 Gigabit
- Storage:	EBS only
- On-Demand Hourly Cost:	$0.0208
- Current Generation:	Yes
- Potential Effective Hourly Cost:	$0.0078
- Potential Savings:	62%
_______________________________________________________________________________

Payment options

For development Select `Spot Instances`

For production select `On-Demand`

```
2 instances x 0.0416 USD On Demand hourly cost x 730 hours in a month = 60.736000 USD
On-Demand instances (monthly): 60.736000 USD
```

If you select Spot Instances
```
Unit conversions

Spot discount: 60/100 = 0.6
Pricing calculations

2 instances x 0.0416 USD On Demand hourly cost x 730 hours in a month = 60.736000 USD
60.736000 USD - (60.736000 USD x 0.6) = 24.294400 USD
Spot instances (monthly): 24.294400 USD
```
_______________________________________________________________________________

Scroll down to the `EBS (Elastic block storage)`

This this is the storage space that is available for each EC2 

Select the following options

- Storage for each EC2 instance: `General Purpose SSD (gp3)`
- General Purpose SSD (gp3) - IOPS (gp3 supports a max of 80,000 IOPS per volume)
    - Enter this value `3000`

- General Purpose SSD (gp3) - Throughput (gp3 supports a max of 2000 MBps 
per volume)

Enter these settings: 
- Value: `125`, Unit: `MBps`
- Storage Amount: `20`, Unit: `GB`

- Snapshot Frequency: `No Snapshot Storage`

This should be the cost estimate:
```
1,460 total EC2 hours / 730 hours in a month = 2.00 instance months

20 GB x 2.00 instance months x 0.08 USD = 3.20 USD (EBS Storage Cost)

EBS Storage Cost: 3.20 USD

30,000 iops - 3000 GP3 iops free = 27,000.00 billable gp3 iops

Max (27000.00 iops, 0 minimum billable iops) = 27,000.00 total billable gp3 iops

27,000.00 iops x 2.00 instance months x 0.005 USD = 270.00 USD (EBS IOPS gp3 Cost)

125 MBps - 125 GP3 MBps free = 0.00 billable MBps

3.20 USD + 270.00 USD = 273.20 USD (Total EBS storage cost)

Amazon Elastic Block Store (EBS) total cost (monthly): 273.20 USD
```
_______________________________________________________________________________
