# cleaning everything
if ! kubectl version &>/dev/null; then
	service nginx stop
    minikube start --driver=docker
else
    kubectl delete --all deploy
    kubectl delete --all svc
    kubectl delete --all secret
    # kubectl delete --all nodes
    kubectl delete --all pods
    kubectl delete --all namespaces
fi


# create our cluster

# needed in order to use locally build images
eval $(minikube docker-env)

# to enable strictARP ode with ipvs
# see what changes would be made, returns nonzero returncode if different
kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl diff -f - -n kube-system

# actually apply the changes, returns nonzero returncode on errors only
kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl apply -f - -n kube-system

# start and config our metalb pod
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl delete -f ./srcs/config.yaml; kubectl apply -f ./srcs/config.yaml

kubectl create secret generic grafana \
	--from-literal=user="schene" \
	--from-literal=password="schene42"

kubectl create secret generic nginx-ssh \
	--from-literal=user="schene" \
	--from-literal=password="schene"

# build our images
docker build -t telegraf_img ./srcs/telegraf
docker build -t nginx_img ./srcs/nginx
docker build -t ftps_img ./srcs/ftps
docker build -t mysql_img ./srcs/mysql
docker build -t phpmyadmin_img ./srcs/phpmyadmin
# docker build -t wordpress_img ./srcs/wordpress
docker build -t influxdb_img ./srcs/influxdb
docker build -t grafana_img ./srcs/grafana

# create and deploy our services
kubectl create -f ./srcs/telegraf-service.yaml
kubectl apply -f ./srcs/nginx-service.yaml
kubectl create -f ./srcs/ftps-service.yaml
kubectl create -f ./srcs/mysql-service.yaml
kubectl create -f ./srcs/phpmyadmin-service.yaml
# kubectl create -f ./srcs/wordpress-service.yaml
kubectl create -f ./srcs/influxdb-service.yaml
kubectl create -f ./srcs/grafana-service.yaml

# start the web dashboard
minikube dashboard
