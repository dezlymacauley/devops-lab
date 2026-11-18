# `Docker` vs `Docker Compose` vs `Kubernetes`
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

Kubernetes allows you to set an auto-restart policy on the container in a pod
so that so that the container is automatically restarted if it crashes 
for whatever reason.

Kubernetes handles scaling by allowing you to increase or decrease 
the number of instances of your application.

Kubernetes is also great for implementing graceful rollouts. 
This is when you want to update the contents of your containers but you don't
want to shut down your entire application.
_______________________________________________________________________________
