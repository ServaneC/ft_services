service nginx stop
minikube delete
echo y | docker image prune -a
echo y | docker system prune
rm -rf ~/.cache ~/.minikube/cache