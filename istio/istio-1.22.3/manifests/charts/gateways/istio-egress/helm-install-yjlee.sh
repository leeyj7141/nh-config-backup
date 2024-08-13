#!/bin/bash 

#helm install istio-egressgateway .   --namespace istio-system  -f values-yjlee.yaml 
#helm upgrade istio-egressgateway .   --namespace istio-system  -f values-yjlee.yaml 
helm uninstall istio-egressgateway  --namespace istio-system  
