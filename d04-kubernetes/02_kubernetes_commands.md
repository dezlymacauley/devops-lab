Example

ngy.deployment.yaml
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-nginx
  labels:
    app: my-nginx
spec:
  # Creates 2 pods, which 1 container in each pod
  replicas: 2
  selector:
    matchLabels:
      app: my-nginx
  template:
    metadata:
      labels:
        app: my-nginx
    spec:
      containers:
      - name: frontend
        image: nginx:alpine
        ports:
        - containerPort: 80
        resources:
          requests:
            memory: "64Mi"
            cpu: "100m" #100
          limits:
            memory: "128Mi"
            cpu: "250m"
```
_______________________________________________________________________________

To check what Kubernetes cluster you are interacting with:
```bash
kubectl config current-context
```

If `minikube` (a single-node Kubernetes cluster) is active, 
you should get this back.
_______________________________________________________________________________

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

Apply changes made
```bash
kubectl apply -f name_of_file.yaml
```
_______________________________________________________________________________

```bash
kubectl get all
```

You should see this
```
kubectl get all
NAME                            READY   STATUS    RESTARTS   AGE
pod/my-nginx-7b84c6c5dd-dw9rd   1/1     Running   0          3s
pod/my-nginx-7b84c6c5dd-sbpwl   1/1     Running   0          3s

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   22m

NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/my-nginx   2/2     2            2           3s

NAME                                  DESIRED   CURRENT   READY   AGE
replicaset.apps/my-nginx-7b84c6c5dd   2         2         2       3s
```
_______________________________________________________________________________
