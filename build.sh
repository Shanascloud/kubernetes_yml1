pwd;
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.22.6/2022-03-09/bin/linux/amd64/kubectl;
chmod +x ./kubectl;
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin;
kubectl version --short --client;
aws --version || true;
aws configure set aws_access_key_id AKIAWB4COEZNTOWEBB54;
aws configure set aws_secret_access_key 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; 
aws configure set default.region ap-southeast-1;
aws configure set default.output json;
aws eks --region ap-southeast-1 describe-cluster --name K8_Vinod_1 --query cluster.status;
aws eks --region ap-southeast-1 update-kubeconfig --name K8_Vinod_1;
kubectl get svc;
kubectl get nodes --output=wide;
kubectl delete deployment html2-deployment || true;
kubectl delete service html2-deployment || true;
kubectl apply -f html2.yml;
kubectl get deployment;
kubectl get pods --output=wide;
kubectl expose deployment html2-deployment --type=NodePort;
kubectl get svc
