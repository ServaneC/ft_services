# create our cluster
minikube start --vm-driver=docker

# start and config our metalb pod
#kubectl apply -f srcs/metallb/namespacelb.yaml
kubectl apply -f srcs/metallb/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/metallb/configlb.yaml

# build our nginx image
docker build -t nginx ./srcs/nginx 

# deploy and start nginx as a service
kubectl apply -f srcs/nginx/nginx-service.yaml

# start the web dashboard
minikube dashboard