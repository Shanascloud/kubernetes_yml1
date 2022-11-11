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
