#!/bin/bash 

kubectl get secret -n cattle-system tls-rancher-ingress -o jsonpath="{.data.tls\.crt}" | base64 --decode > tls-rancher-ingress.crt
kubectl get secret -n cattle-system tls-rancher-ingress -o jsonpath="{.data.tls\.key}" | base64 --decode > tls-rancher-ingress.key

kubectl -n cattle-system delete secret tls-rancher-internal-ca

kubectl -n cattle-system create secret tls tls-rancher-internal-ca \
  --cert=tls-rancher-ingress.crt \
  --key=tls-rancher-ingress.key
