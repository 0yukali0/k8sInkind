# Create metallb namespace
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/master/manifests/namespace.yaml
# Create metallb secret
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
# Create controller and speaker deamonset for kind nodes
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/master/manifests/metallb.yaml
# Show docker ip range
docker network inspect -f '{{.IPAM.Config}}' kind