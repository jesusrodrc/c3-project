sed -i "s|REPLACE|$AWS_CREDENTIALS|g" udacity-c3-deployment/k8s/aws-secret.yaml
sed -i "s|REPLACE_USER|$POSGRES_USER|g" udacity-c3-deployment/k8s/env-secret.yaml
sed -i "s|REPLACE_PASSWORD|$POSGRES_PWD|g" udacity-c3-deployment/k8s/env-secret.yaml

kubectl apply -f udacity-c3-deployment/k8s

kubectl set image deployments/backend-feed backend-feed=jesusrodrc/udacity-restapi-feed:latest
kubectl set image deployments/backend-user backend-user=jesusrodrc/udacity-restapi-user:latest
kubectl set image deployments/frontend frontend=jesusrodrc/udacity-frontend:latest
kubectl set image deployments/reverseproxy reverseproxy=jesusrodrc/reverseproxy:latest