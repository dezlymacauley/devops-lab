How to search for pods
```bash
kubectl get pods
```

```bash
kubectl apply -f grade_submission_portal_pod.yaml
```

You should see this after running the command:
```bash
pod/grade-submission-portal created
```
_______________________________________________________________________________

You should see this after running the command:
```
NAME                      READY   STATUS    RESTARTS   AGE
grade-submission-portal   1/1     Running   0          8m54s
```
_______________________________________________________________________________

To get more info about a pod
```bash
kubectl describe pod grade-submission-portal
```
_______________________________________________________________________________

```bash
kubectl logs grade-submission-portal
```

_______________________________________________________________________________

Or stream the logs
```bash
kubectl logs -f grade-submission-portal
```

Note: This will take up the space on the terminal

Open a new terminal session and run this command:
```bash
kubectl port-forward grade-submission-portal 8080:5001
```

This will allow you to access port 5001 of the container on port 8080 on
your local machine

You should see this:
```
Forwarding from 127.0.0.1:8080 -> 5001
Forwarding from [::1]:8080 -> 5001
```

You should be able to view the frontend at:
```
http://127.0.0.1:8080/
```
_______________________________________________________________________________

This creates the resource if it does not exist or updates it.
_______________________________________________________________________________


How to delete a pod
    ````
❯ kubectl delete pod -l "app.kubernetes.io/name=grade-submission"
pod "grade-submission-portal" deleted from default namespace
d03-kubernetes/01-demo-applications/grade-submission on  main [!]
    ``
_______________________________________________________________________________

- Container 1: Grade Submission Portal (Frontend)
    - For submitting data to the backend

- Container 2: Grade Submission API (Backend)
    - For storing the submitted data

_______________________________________________________________________________

A pod can actually run more than one container.

E.g. You have a microservice that relies on a sidecar to provide additional
functionality.

E.g. A health checker service that will monitor its health and display
information.

_______________________________________________________________________________
