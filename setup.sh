# create our cluster
minikube start --vm-driver=docker

# needed in order to use locally build images
eval $(minikube docker-env)

# start and config our metalb pod
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl delete -f ./srcs/configlb.yaml; kubectl apply -f ./srcs/configlb.yaml


#kubectl apply -k ./srcs/

# build our nginx image
docker build -t nginx_img ./srcs/nginx/
docker build -t ftps_img ./srcs/ftps/
docker build -t mysql_img ./srcs/mysql/
docker build -t phpmyadmin_img ./srcs/phpmyadmin/
docker build -t wordpress_img ./srcs/wordpress/
docker build -t influxdb_img ./srcs/influxdb/
docker build -t grafana_img ./srcs/grafana/

# create and deploy our services
kubectl delete deployments nginx; kubectl delete service nginx; kubectl create -f ./srcs/nginx/nginx-service.yaml
kubectl delete deployments ftps; kubectl delete service ftps; kubectl create -f ./srcs/ftps/ftps-service.yaml
kubectl delete deployments mysql; kubectl delete service mysql; kubectl create -f ./srcs/mysql/mysql-service.yaml
kubectl delete deployments phpmyadmin; kubectl delete service phpmyadmin; kubectl create -f ./srcs/phpmyadmin/phpmyadmin-service.yaml
kubectl delete deployments wordpress; kubectl delete service wordpress; kubectl create -f ./srcs/wordpress/wordpress-service.yaml
kubectl delete deployments influxdb; kubectl delete service influxdb; kubectl create -f ./srcs/influxdb/influxdb-service.yaml
kubectl delete deployments grafana; kubectl delete service grafana; kubectl create -f ./srcs/grafana/grafana-service.yaml

# start the web dashboard
minikube dashboard
