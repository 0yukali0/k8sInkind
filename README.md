# k8sInkind
Try k8s via kind in ntcu class and you can visit these link to know more details.
1. kind website https://kind.sigs.k8s.io/
2. k8s website https://kubernetes.io/docs/home/
3. k8s API Reference https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/
4. metallb website https://metallb.universe.tf/

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
