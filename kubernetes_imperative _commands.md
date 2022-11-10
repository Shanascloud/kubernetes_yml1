# create a pod with name admin-pod and image=busybox, allow te pod to set system_time and the container should sleep for 3200 secs
# below command to do a dry and show the Yaml output and later modeify accordingly as per the requiremnts, here to set the system time you need to refer to Capabilities in documents  

kubectl run admin-pod --image=ngnix --command sleep 3200 --dry-run=client -o yaml
