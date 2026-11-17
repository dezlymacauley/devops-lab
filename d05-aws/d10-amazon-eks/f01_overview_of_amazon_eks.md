# Overview of Amazon EKS
_______________________________________________________________________________

## When should you use `Docker`
Use Docker when you simply want to run a single container, 
on the same machine.
_______________________________________________________________________________

## When should you use `Docker Compose`
Use Docker Compose when you want to run multiple containers,
on the same machine.
_______________________________________________________________________________

## When should you use `Kubernetes`?
Use Kubernetes when you want to run multiple containers,
on different machines.

Kubernetes allows you control which machine each container 
will be running on.

Kubernetes allows you to set an auto-restart policy on a container so that
it automatically restarts.

Kubernetes handles scaling by allowing you to increase or decrease 
the number of instances of your application.

Kubernetes is also used for graceful rollouts. I.e. Updating the code in
a container without downtime.
_______________________________________________________________________________

## When should you use `Amazon EKS`?

Running raw Kubernetes from scratch requires you to set up and manage 
the "Control Plane" (the brain—API servers, schedulers, 
databases storing cluster data) across multiple availability zones, 
which is notoriously difficult to maintain.

Amazon EKS is short for "Amazon Elastic Kubernetes Service"


It is a managed Kubernetes control plane.

AWS handles the Control Plane (The "Brain"): 
This includes the API server, schedulers, controllers, 
and database (etcd) that run the reconciliation loops 
and store your cluster configuration. 

AWS keeps the brain running, healthy, 
and patched across multiple availability zones so you don't have to.   

You control the Worker Nodes & Workloads (The "Muscle"):
hese are the actual servers (EC2 instances) where your application 
containers (pods) run, and the configuration manifests 
you write to tell Kubernetes what to do. You control this part.
_______________________________________________________________________________

## What is the `reconciliation loop`?

This is a loop that Kubernetes uses to manage your application.

1. Desired State: 
You tell Kubernetes what you want 
(e.g., "I want 3 replicas/instances of my app running"). 
You write this in a configuration file called a manifest.

2. Observed State:
This is what the cluster is actually running.

Kubernetes will continuously check if `Observed State` is equal 
to the `Desired State` and then take some action to correct this.  

EKS manages the underlying infrastructure that runs that loop for you, 
while you are responsible for deploying your app manifests 
and managing the worker nodes where your apps actually live.
_______________________________________________________________________________
