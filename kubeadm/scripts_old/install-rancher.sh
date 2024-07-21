#!/bin/bash 

#kubectl create ns cattle-system 

## uninstall 
#helm uninstall rancher --namespace cattle-system 

# install
#helm install rancher rancher-stable/rancher --namespace cattle-system --set hostname=rancher.test.dom --set bootstrapPassword=admin  --set tls=external
helm install rancher rancher-stable/rancher --namespace cattle-system \
--set hostname=rancher.test.dom \
--set bootstrapPassword=admin  \
--set ingress.tls.source=secret \
--set privateCA=true 

#
## upgrade 
#helm upgrade rancher rancher-stable/rancher --namespace cattle-system --set hostname=rancher.test.dom --set bootstrapPassword=admin

#helm upgrade rancher rancher-stable/rancher --namespace cattle-system \
#--set hostname=rancher.test.dom \
#--set bootstrapPassword=admin  \
#--set ingress.tls.source=secret \
#--set privateCA=true 
