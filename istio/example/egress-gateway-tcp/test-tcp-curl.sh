#!/bin/bash 

kubectl exec -it -n istio-example2 curl -- curl -v http://mongo.my.ghlee:7777  
#kubectl exec -it -n istio-example2 curl -- curl  -k https://mongo.my.ghlee:7777

