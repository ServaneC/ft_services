# create our cluster
minikube start --vm-driver=docker

# start and config our metalb pod
# kubectl apply -f srcs/metallb/metallb.yaml
kubectl apply -f srcs/metallb/metallb.yaml
kubectl apply -f srcs/metallb/configlb.yaml

# build our nginx image
docker build srcs/nginx -t nginx

# deploy and start nginx as a service
kubectl apply -f srcs/nginx/nginx-deploy.yaml
kubectl apply -f srcs/nginx/nginx-service.yaml

# start the web dashboard
# minikube dashboard