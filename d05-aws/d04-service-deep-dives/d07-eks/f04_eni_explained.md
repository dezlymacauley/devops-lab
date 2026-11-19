# ENI Explained
_______________________________________________________________________________

## What is an `ENI`?

What does ENI stands for `Elastic Network Interface`

An `ENI` is simply a tool that allows two or more AWS resources,
that live in separate AWS accounts, that
_______________________________________________________________________________

## Why is an `ENI` needed when using `Amazon EKS`?

When you use `Amazon EKS`, the control plane (aka the brain 
of your Kubernetes cluster) is running in an AWS-managed account that
you can't log into.
_______________________________________________________________________________

On your user-created AWS  account, 
you will have to setup a VPC (your user-defined network), 
which will contain the worker nodes (aka the computers aka EC2 instances) of
the Kubernetes cluster, and the pods running on those worker nodes.

Pods are just groups of Docker containers.
_______________________________________________________________________________

An ENI is needed because the `control plane` of the kubernetes Cluster,
is in a an AWS managed account, 
while the `worker nodes` of the Kubernetes cluster are 
on your user created AWS account.

This method of communication has to be private so that data is not exposed
to the public internet.

This is done by placing `ENI`s (created and managed by the EKS control plane) 
inside your VPC subnets so the control plane 
_______________________________________________________________________________
