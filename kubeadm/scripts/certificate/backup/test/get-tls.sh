#!/bin/bash 

#kubectl get secret -n cattle-system tls-rancher -o jsonpath="{.data.tls\.crt}" | base64 --decode >> tls-rancher.crt
#kubectl get secret -n cattle-system tls-rancher -o jsonpath="{.data.tls\.key}" | base64 --decode >> tls-rancher.key
#
#
#kubectl get secret -n cattle-system tls-rancher-ingress -o jsonpath="{.data.tls\.crt}" | base64 --decode >> tls-rancher-ingress.crt
#kubectl get secret -n cattle-system tls-rancher-ingress -o jsonpath="{.data.tls\.key}" | base64 --decode >> tls-rancher-ingress.key

kubectl get secret -n cattle-system tls-rancher-internal -o jsonpath="{.data.tls\.crt}" | base64 --decode >> tls-rancher-internal.crt
kubectl get secret -n cattle-system tls-rancher-internal -o jsonpath="{.data.tls\.key}" | base64 --decode >> tls-rancher-internal.key
