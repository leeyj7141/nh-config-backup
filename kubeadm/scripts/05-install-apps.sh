#!/bin/bash 


##
kubectl apply -f calico-v3.25.yaml
##
helm install -n kube-system yjlee oci://ghcr.io/nginxinc/charts/nginx-ingress --version 1.3.1  -f ingress-values.yaml
#
### cert-manager ###
##helm repo add jetstack https://charts.jetstack.io
##
##helm repo update
#
#kubectl create ns cert-manager
#
#kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
#
#helm install cert-manager jetstack/cert-manager \
#  --namespace cert-manager \
#  --set crds.enabled=true

#helm uninstall --namespace cert-manager cert-manager 
