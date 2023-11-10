curl http://127.0.0.1:8080
curl http://127.0.0.1:8000
curl http://127.0.0.1:30010
curl http://127.0.0.1:30011
curl http://192.168.49.2

http://localhost:30010
http://localhost:30011

kubectl port-forward service/karsajobs-service 30010:8080
kubectl port-forward service/karsajobs-ui-service 30011:8000

kubectl cluster-info
kubectl get node
kubectl get pods
kubectl describe pod
kubectl get service
kubectl get namespace
kubectl get pod -n deployments
kubectl describe service karsajobs
kubectl describe service karsajobs-ui
kubectl logs pod/karsajobs-5b8755668d-6jjxg

Minikube service list

minikube service karsajobs –url
minikube service karsajobs-service –url
minikube service karsajobs-ui –url
minikube service karsajobs-ui-service –url
minikube service mongo-0 –url
minikube service mongo-service –url

kubectl run -it --rm --image=mongo:4.4.3 --restart=Never --name=mongo mongo-client -- mongo -h admin -p supersecretpassword

kubectl exec -it mongo-0 -- sh
kubectl delete pod karsajobs-backend-dbb465899-d4kvx && kubectl delete karsajobs-ui-frontend-c6f8cdf95-dh7ql && kubectl delete pod mongo-0


kubectl apply -f kubernetes/backend/karsajobs-service.yml
kubectl apply -f kubernetes/backend/karsajobs-deployment.yml
kubectl apply -f kubernetes/frontend/karsajobs-ui-service.yml
kubectl apply -f kubernetes/frontend/karsajobs-ui-deployment.yml
kubectl apply -f kubernetes/mongodb/mongo-configmap.yml
kubectl apply -f kubernetes/mongodb/mongo-secret.yml
kubectl apply -f kubernetes/mongodb/mongo-pv-pvc.yml
kubectl apply -f kubernetes/mongodb/mongo-service.yml
kubectl apply -f kubernetes/mongodb/mongo-statefulset.yml

ghcr.io/arifhrpp/karsajobs-ui:latest
ghcr.io/arifhrpp/karsajobs:latest