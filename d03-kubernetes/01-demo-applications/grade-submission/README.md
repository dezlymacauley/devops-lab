

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

- Container 1: Grade Submission Portal (Frontend)
    - For submitting data to the backend

- Container 2: Grade Submission API (Backend)
    - For storing the submitted data
