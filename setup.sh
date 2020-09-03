minikube start --vm-driver=docker
docker build srcs/nginx -t nginx
kubectl run nginx --image=nginx --port=80 --port=443
kubectl create deployment --image=nginx nginx-app
# kubectl set env deployment/nginx-app  DOMAIN=cluster
minikube dashboard