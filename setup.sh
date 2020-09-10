# create our cluster
minikube start --vm-driver=docker

eval $(minikube docker-env)
# start and config our metalb pod

#kubectl apply -f srcs/metallb/metallb.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl delete -f ./srcs/configlb.yaml; kubectl apply -f ./srcs/configlb.yaml
#kubectl apply -f srcs/metallb/configlb.yaml

#kubectl apply -k ./srcs/

# build our nginx image
docker build -t nginx_img ./srcs/nginx/
docker build -t ftps_img ./srcs/ftps/

# deploy and start nginx as a service
#kubectl apply -f srcs/nginx-service.yaml
kubectl delete deployments nginx; kubectl delete service nginx; kubectl create -f ./srcs/nginx-service.yaml

#kubectl apply -f srcs/ftps/ftps-service.yaml
kubectl delete deployments ftps; kubectl delete service ftps; kubectl create -f ./srcs/ftps-service.yaml

# start the web dashboard
minikube dashboard
