#!/bin/bash 


export MYHOST=$(kubectl config view -o jsonpath={.contexts..namespace}).bookinfo.com

kubectl apply -l version!=v2,version!=v3 -f https://raw.githubusercontent.com/istio/istio/release-1.22/samples/bookinfo/platform/kube/bookinfo.yaml

kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.22/samples/sleep/sleep.yaml

#kubectl exec $(kubectl get pod -l app=sleep -o jsonpath='{.items[0].metadata.name}') -c sleep -- curl -sS productpage:9080/productpage | grep -o "<title>.*</title>"

