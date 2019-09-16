sed -i "s|REPLACE|$AWS_CREDENTIALS|g" udacity-c3-deployment/k8s/aws-secret.yaml
sed -i "s|REPLACE_USER|$POSGRES_USER|g" udacity-c3-deployment/k8s/env-secret.yaml
sed -i "s|REPLACE_PASSWORD|$POSGRES_PWD|g" udacity-c3-deployment/k8s/env-secret.yaml

kubectl apply -f udacity-c3-deployment/k8s