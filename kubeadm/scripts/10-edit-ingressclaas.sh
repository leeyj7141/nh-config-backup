#!/bin/bash 

kubectl patch ing rancher -n cattle-system --type='json' -p='[{"op": "add", "path": "/spec/ingressClassName", "value":"nginx"}]'

kubectl get ing -n cattle-system 
