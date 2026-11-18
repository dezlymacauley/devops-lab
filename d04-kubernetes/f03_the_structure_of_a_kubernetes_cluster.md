# The structure of a Kubernetes cluster
_______________________________________________________________________________

```
Kubernetes Cluster
│
├── Control Plane
│   │
│   ├── API Server
│   ├── Scheduler
│   ├── Controller Manager
│   └── etcd
│
└── Worker Nodes
    │
    ├── Worker Node 1
    │   │
    │   ├── Pod
    │   │   ├── Container
    │   │   └── Container
    │   │
    │   └── Pod
    │       └── Container
    │
    ├── Worker Node 2
    │   │
    │   ├── Pod
    │   │   └── Container
    │   │
    │   └── Pod
    │       └── Container
    │
    └── Worker Node 3
        │
        └── Pod
            └── Container
```
_______________________________________________________________________________

## The Kubernetes Cluster

This is the entire Kubernetes environment.
It contains the `Control Plane` and the `Worker Nodes`
_______________________________________________________________________________

## Worker Nodes

A worker node is simply one of the computers that are part of the Kubernetes
cluster. 

A Kubernetes cluster contains multiple computers (aka multiple worker nodes).

The for this is because it is very risky to have your entire application 
dependant on a single computer because if that computer goes down, 
then your entire application goes offline.
_______________________________________________________________________________

## The Control Plane

Think of this as the brain of the Kubernetes cluster.

This is what Kubernetes uses to manage all of the resources that are running
inside the Kubernetes Cluster.

The control plain is made up 4 core components:
1. API server: This is an entry point that is used to communicate with
Kubernetes.

2. Scheduler: This decides which computers (aka worker nodes) in 
the Kubernetes cluster each pod should be deployed on.

3. Controller Manager: This constantly checks if `observed state` of the
Kubernetes cluster, matches the `desired state` that you declared,
and takes action to update the `observed state`.

E.g. Let's say that you declared that you want 
a minimun of 3 computers (aka worker nodes) to always be running

_______________________________________________________________________________
