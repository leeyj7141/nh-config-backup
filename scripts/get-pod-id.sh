#!/bin/bash 

kubectl get pods --all-namespaces -o jsonpath='{range .items[*]}{.metadata.namespace} {.metadata.name} {.metadata.uid}{"\n"}{end}'

