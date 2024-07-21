#!/bin/bash 


helm repo add jetstack https://charts.jetstack.io

helm repo update

kubectl create ns cert-manager 
kubectl -n  cert-manager certmanager.k8s.io/disable-validation=true

helm install cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --set installCRDs=true

