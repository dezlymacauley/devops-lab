
To create pods from a yaml file
```bash
kubectl create -f name_of_file.yaml --save-config
```
_______________________________________________________________________________

How to search for pods
```bash
kubectl get pods
```

You should see the following
```
NAME                        READY   STATUS              RESTARTS   AGE
my-nginx-7b84c6c5dd-f2gcr   0/1     ContainerCreating   0          24s
my-nginx-7b84c6c5dd-rmvqn   0/1     ContainerCreating   0          24s
```
_______________________________________________________________________________

To delete pods
```bash
kubectl delete -f name_of_file.yaml
```
_______________________________________________________________________________
