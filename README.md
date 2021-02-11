# Alpine: .NET Debug Base Images (vsdbg)
.NET Alpine debug base image used for debugging containers running in minkube/kubernetes cluster.

## How to Use

### SSH into Container Running in Kubernetes

k expose $POD --type=LoadBalancer --name ssh-debug --port=2222 --target-port=2222

ssh root@127.0.0.1 -p 2222 -k key