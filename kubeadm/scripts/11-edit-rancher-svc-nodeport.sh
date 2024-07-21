#!/bin/bash 

kubectl patch svc rancher -n cattle-system --type='json' -p='[{"op": "replace", "path": "/spec/type", "value":"NodePort"},{"op": "add", "path": "/spec/ports/0/nodePort", "value":31080},{"op": "add", "path": "/spec/ports/1/nodePort", "value":31443}]'

kubectl get svc -n cattle-system 
