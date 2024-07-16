#1/bin/bash 

kubectl create ns cattle-system 

helm uninstall rancher rancher-stable/rancher \
  --namespace cattle-system \
#  --set hostname=rancher.test.dom \
#  --set bootstrapPassword=admin

#helm install rancher rancher-stable/rancher \
#  --namespace cattle-system \
#  --set hostname=rancher.test.dom \
#  --set bootstrapPassword=admin
