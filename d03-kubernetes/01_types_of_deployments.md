Rolling update deployments

Canary deployments

Blue green deployments

Run jobs and cron jobs

What is a service?
What is a pod?
What is a deployment?

_______________________________________________________________________________

### Control plane
- This is how you talk to the different nodes in Kubernetes.
_______________________________________________________________________________

### Nodes
- These could be virtual machines or physical hardware.
_______________________________________________________________________________

### Deployment Yaml file
- Then run that through kubectl
_______________________________________________________________________________

### Create a deployment
kubectl create -f file.deployment.yml --save-config
_______________________________________________________________________________

### Apply changes
kubectl apply -f file.deployment.yml
_______________________________________________________________________________
