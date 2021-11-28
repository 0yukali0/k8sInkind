# k8sInkind
Try k8s via kind in ntcu class 
## Create kind cluster
```
kind create cluster --config cluster.yaml
```
## Apply a yaml
```
kubectl apply -f ${Your yaml file}
```

## List resouces in k8s
```
// nodes
kubectl get nodes

// namespaces
kubectl get namespaces

// Services in metallb namespace
kubectl get svc -n metallb

// Pod in metallb namespace
kubectl get pods -n metallb
```
## Check your nginx website in terminal
```
watch curl -v externalIP:port
```

## Delete kind cluster
```
// you will find cluster name in cluster.yaml
cat cluster.yaml
// delete kind cluster
kind delete cluster --name ${your cluster name}
```
