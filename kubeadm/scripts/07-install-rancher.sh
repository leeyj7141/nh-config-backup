#!/bin/bash 

#helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
#
#helm repo update 

#kubectl create ns cattle-system

### uninstall
helm uninstall rancher --namespace cattle-system

# install with cert-manager
#helm install rancher rancher-stable/rancher --namespace cattle-system \
#--set hostname=rancher3.test.dom \
#--set bootstrapPassword=admin  \
#--set certmanager.version=v1.15.1


## install with private certificate
#helm install rancher rancher-stable/rancher --namespace cattle-system \
#--set hostname=rancher3.test.dom \
#--set bootstrapPassword=admin  \
#--set ingress.tls.source=secret \
#--set privateCA=true


## upgrade
#helm upgrade rancher rancher-stable/rancher --namespace cattle-system \
#--set hostname=rancher.test.dom \
#--set bootstrapPassword=admin  \
#--set ingress.tls.source=secret \
#--set privateCA=true
