#!/bin/bash 


kubectl scale --replicas 0   -n thanos sts thanos-storegateway
kubectl scale --replicas 0   -n thanos deploy  thanos-compactor 
kubectl delete pod -n thanos -l app.kubernetes.io/component=storegateway
kubectl delete pvc -n thanos -l app.kubernetes.io/name=thanos
