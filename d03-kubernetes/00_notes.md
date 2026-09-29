Kubernetes is a tool used to manage multiple machines. These could be
physical machines or virtual machines.

- Kubernetes (The standard for managing cloud native applications)
- Deploy containerized applications using pods
- Allow applications to find and communicated with each other 
using Kubernetes services.
- Use namespaces to organize resources
- Use deployment objects to create several instances of your applications.
- Deploy database using stateful sets and provide them with storage using
persistent volumes.

Kubernetes is vendor neutral. It works the same way on AWS and GCP.

Cloud Native?
Applications that are designed for cloud environments.
It is an application that is distributed into many applications called
microservices.

It microservice performs a specific task and runs inside a container.

Container?
A lightweight environment that isolates your application. It contains all
the resources and dependencies needed to run that container.

Cons?
The more microservices you have, the harder the app is to manage.
- resource allocation (distributing memory and CPU accross microservices)

Resilience?
Detect unhealthy containers and solve issues.

Load balancing
Ensuring that traffic is distributed equally across the applications.
_______________________________________________________________________________

### High overview
Cluster (Worker Nodes +  Master Node)

Master Nodes?
The brains of the operation. They makes decisions about when and where
the container workloads will run.

Worker Nodes?

A worker node is the physical machine 
or virtual machine running the container.

_______________________________________________________________________________

Pod?
The smallest deployable unit.

You can't deploy a container directly in Kubernetes.

The container must be in a pod.

Pod config details:
container name
image used to create the container
Resources:
    - cpu
    - memory

Every pod can be accessed via a virtual ip address.

Pods are ephimeral. They get destroyed very often. This is why Kubernetes
has the concept of a `service`, which is used to bind a pod with a certain
labe so that it can be tracked, even if its ip address changes.

Services act as load balancers.

E.g. if you have two instances of the same service, 
Kubernetes can evenly distribute the load between them.

_______________________________________________________________________________

For each database instance, Kubernetes allows you to define your storage
requirements and a persistent volume. 
_______________________________________________________________________________

Minikube creates a single node cluster.

Its a single node cluster because it only runs on one machine (my laptop).

This node acts as the master node and the worker node.
_______________________________________________________________________________

In production you would deploy your application on a multi-node cluster.

This multi-node cluster would have multiple worker nodes that are running
different services or intances of your application.

And you would also have multiple master nodes for high availability,
because if your application only has one master node and that node goes down,
then your application loses its only manager.
_______________________________________________________________________________
