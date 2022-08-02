# kubernetes_yml1
Kubernetees Commands

- aws configure


To check the status of cluster 
- aws eks --region ap-southeast-1 describe-cluster --name K8_Vinod --query cluster.status

To fetch all my configuration on to my kubectl
- aws eks --region ap-southeast-1 update-kubeconfig --name K8_Vinod


To check the services running in master 
-kubectl get svc

To check the Nodes Running 
-kubectl get nodes
kubectl delete pods --all

To create the pod on Kubernet, We will write a  yml file and use kubectl to apply on the master
-kubectl apply -f pod.yml
-kubectl get pods
-kubectl describe
-kubectl get pod “name”


To get teh replicas
- kubectl get rs

to get  the deployment details
- kubectl get deployment

to check if i delete 1 pod , what wiillhappen
- kubectl delete pod "podname'
- kubectl get pods
- kubectl get pods --output=wide

To delete the deployments
- kubectl delete deployment project2-deployment

- kubectl delete pods --all

- kubectl get svc
- kubectl delete Service project5 (to delete load balancer)

https://www.bmc.com/blogs/kubernetes-port-targetport-nodeport/
You need to expose the nodeport fo this  and the open the ports in EC2 Security 

- kubectl expose deployment tomcat-deployment --type=NodePort
- kubectl expose deployment myapp-deployment --type=NodePort
myapp
