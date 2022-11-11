# To check the Pods running in th Kube system " -n stands for namespace"

- kubectl get pods -n kube-system


# to check the manifests files of system in kubeadminsetup
- cat /etc/kubernetes/manifests/kube-apiserver.yaml


# In non kubeadminsetup, we can check it in below 

- cat /etc/systemd/system/kube-apiserver.service

# to check the running process
ps -aux | grep kube-apiserver
