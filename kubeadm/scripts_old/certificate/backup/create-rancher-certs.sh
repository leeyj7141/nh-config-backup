#!/bin/bash 

#kubectl create ns cattle-system 
#
#kubectl -n cattle-system create secret tls tls-rancher-ingress \
#  --cert=tls.crt \
#  --key=tls.key

#kubectl -n cattle-system create secret generic tls-ca \
#  --from-file=cacerts.pem=./cacerts.pem
#
kubectl -n cattle-system delete secret tls-rancher-internal-ca

kubectl -n cattle-system create secret tls tls-rancher-internal-ca \
  --cert=tls.crt \
  --key=tls.key
