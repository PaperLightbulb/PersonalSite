docker build --tag arboretc/node1:latest .
docker push arboretc/node1:latest
sudo k3s kubectl delete -f deployment.yaml
sudo k3s kubectl delete -f service.yaml
sudo k3s kubectl apply -f deployment.yaml
sudo k3s kubectl apply -f service.yaml
sudo k3s kubectl get pods
sudo k3s kubectl get services
