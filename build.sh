docker build --tag arboretc/vueex:latest .
docker push arboretc/vueex:latest
sudo k3s kubectl delete -f deployment.yaml
sudo k3s kubectl delete -f service.yaml
sudo k3s kubectl apply -f deployment.yaml
sudo k3s kubectl apply -f service.yaml
sudo k3s kubectl get pods
sudo k3s kubectl get services
