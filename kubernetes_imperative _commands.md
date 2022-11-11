# create a pod with name admin-pod and image=busybox, allow te pod to set system_time and the container should sleep for 3200 secs
command below to do a dry-run and show the Yaml output and later modeify accordingly as per the requiremnts, here to set the system time you need to refer to Capabilities in documents  



- kubectl run admin-pod --image=ngnix --command sleep 3200 --dry-run=client -o yaml



# create a new  deployment  with name web-project and imaage nginx:1.16 and replicaa =1 . And next upgade the deployment to version 1.17 using rolling update . make sure the rolling update is recorded in resource annotation 

- kubectl create deployment web-project --image=nginx:1.16 --dry-run=client -o yaml > 2.yaml

- Kubectl apply -f 2.yaml 

- kubectl set image deployemnt web-project nginx=nginx:1.17 --record
# to make  sure the rolling update is recorded in resource annotation 

# to check  the image updated
- kubectl describe deployment web-project | grep -i image 

# to check the record 
- kubectl rollout history deployment web-project


# Fix the original replica set new-replica-set to use the correct busybox image.Either delete and recreate the ReplicaSet or Update the existing ReplicaSet and then delete all PODs, so new ones with the correct image will be created.


- kubectl edit replicaset new-replica-set


# Scale the ReplicaSet to 5 PODs. Use command or edit the replicaset using .

-kubectl scale 

-kubectl edit replicaset

Example 
- kubectl scale rs --replicas=5 new-replica-set

- kubectl get  rs 


# Certification Tip! Here's a tip! 

# As you might have seen already, it is a bit difficult to create and edit YAML files. Especially in the CLI. During the exam, you might find it difficult to copy and paste YAML files from browser to terminal. Using the kubectl run command can help in generating a YAML template. And sometimes, you can even get away with just the kubectl run command without having to create a YAML file at all. For example, if you were asked to create a pod or deployment with specific name and image you can simply run the kubectl run command. Use the below set of commands and try the previous practice tests again, but this time try to use the below commands instead of YAML files. Try to use these as much as you can going forward in all exercises


https://kubernetes.io/docs/reference/kubectl/conventions/

# Create an NGINX Pod

- kubectl run nginx --image=nginx

# Generate POD Manifest YAML file (-o yaml). Don't create it(--dry-run)

- kubectl run nginx --image=nginx --dry-run=client -o yaml

# Create a deployment

- kubectl create deployment --image=nginx nginx

# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run)

- kubectl create deployment --image=nginx nginx --dry-run=client -o yaml

# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run) with 4 Replicas (--replicas=4)

- kubectl create deployment --image=nginx nginx --dry-run=client -o yaml > nginx-deployment.yaml

# Save it to a file, make necessary changes to the file (for example, adding more replicas) and then create the deployment.

kubectl create -f nginx-deployment.yaml

OR

# In k8s version 1.19+, we can specify the --replicas option to create a deployment with 4 replicas.

- kubectl create deployment --image=nginx nginx --replicas=4 --dry-run=client -o yaml > nginx-deployment.yaml




# other imperative commands 


- kubectl run --image=nginx nginx

- kubectl create deployment --image=nginx nginx

- kubectl expose  deployment nginx --port 80 

- kubectl edit deployment nginx

- kubectl scale  deployment nginx --replicas=5

- kubectl set  image  deployment nginx nginx=nginx:1.18

- kubectl create -f nginx.yaml

- kubectl replace  -f nginx.yaml

- kubectl delate  -f nginx.yaml




