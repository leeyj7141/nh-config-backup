#!/bin/bash 

kubectl exec -it -n istio-example2 curl -- curl http://egress.my.ghlee/page1
