# To check the Pods running in th Kube system " -n stands for namespace"

- kubectl get pods -n kube-system


# to check the manifests files of system in kubeadminsetup
- cat /etc/kubernetes/manifests/kube-apiserver.yaml


# In non kubeadminsetup, we can check it in below 

- cat /etc/systemd/system/kube-apiserver.service

# to check the running process
ps -aux | grep kube-apiserver


# how to create namespace

- kubectl create namespace dev


# to Switch to different namespace 

- kubectl config set-context $(kuberctl config current-context) --namespace=dev 


# We can also allocoate the resource for the each namespace as per our plan 



    -A, --all-namespaces=false:
        If present, list the requested object(s) across all namespaces.
        Namespace in current context is ignored even if specified with
        --namespace.
