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

Each worker node can either be a physical computer, or in many cases,
a virtual computer that has been rented from a cloud provider 
like AWS (Amazon Web Services).
_______________________________________________________________________________

## Pods

Each worker node (computer) can contain 1 or more 
containers (E.g. Docker containers).

A pod is simply a group name for a bunch of containers.

So each worker node has 1 or more pods.

And each pod will have 1 or more containers.

_______________________________________________________________________________

E.g.

- This is a Kubernetes cluster with 2 worker nodes (aka 2 computers)

- Computer 1 is running 3 containers.
- Those containers are grouped usin two pods (Pod A and Pod B)

- Computer 2 is running 2 containers.
- Those containers are grouped usin two pods (Pod C and Pod D)

```
☸️ Kubernetes Cluster (The entire app: Frontend and Backend)
│
└── Worker Nodes (The computers running in the Kubernetes cluster)
    │
    ├── 💻 Worker Node 1 (Computer 1)
    │   │
    │   ├── Pod A: 🎨 Website User Interface
    │   │   ├── Container: SvelteKit (JavaScript framework)
    │   │   └── Container: File Processor (E.g. Images uploaded to the site)
    │   │
    │   └── Pod B: ⚙️ Backend API
    │       └── Container: Axum (Rust backend framework for handling requests)
    │
    └── 💻 Worker Node 2 (Computer 2)
        │
        ├── Pod C: 🤖 AI Functionality
        │   └── Container: LangChain app (Python framwork for AI powered apps)
        │
        └── Pod D: 🗃️ Database
            └── Container: Postgres (Relational Database that uses SQL)
```

_______________________________________________________________________________

## The Control Plane

Think of this as the brain of the Kubernetes cluster.

This is what Kubernetes uses to manage all of the resources that are running
inside the Kubernetes Cluster.
_______________________________________________________________________________

## The core components of the control plane

The control plain is made up 4 core components:
1. API server: This is an entry point that is used to communicate with
Kubernetes.

2. Scheduler: This decides which computers (aka worker nodes) in 
the Kubernetes cluster each pod should be deployed on.

3. Controller Manager: This constantly checks if `observed state` of the
Kubernetes cluster, matches the `desired state` that you declared,
and takes action to update the `observed state`.

E.g. Let's say that you declared that you want 
a minimun of 3 computers (aka worker nodes) to always be running in the
Kubernetes cluster.

That is the `desired state`. However lets say that there are currently only
2 computers running in the Kubernetes cluster. 

That is the `observed state`. It represents what is actually happening in
real life. The control manager will then perform the required action to 
add another computer to the Kubernetes cluster so 
that the `observed state` is equal to the `desired state`.

4. `ectd`
If the `control plane` is the brain of the Kubernetes cluster,
then think of `ectd` as the part of the brain that is responsible 
for `long-term` memory. 

The control plane uses `ectd` to store the settings of the Kubernetes cluster
and the current state of the Kubernetes cluster (aka the `observed state`)
which are both used by the control plan as a guide for which actions to
perform on the Kubernetes cluster.
_______________________________________________________________________________

## Why the name `etcd`?

On a Linux and unix based computer, 
there is a directory called `/etc` that contains configuration files

originated from two ideas, 
the unix “/etc” folder and “d"istributed systems. 

The “/etc” folder is a place to store configuration data 
for a single system whereas etcd stores configuration information 
for large scale distributed systems.

So `etcd` effectively means a collection of configuration information
that is used by multiple computers (aka worker noded).
_______________________________________________________________________________
