#!/bin/bash 

#kubectl auth can-i get services --namespace=thanos --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus
#kubectl auth can-i list services --namespace=thanos --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus
#kubectl auth can-i watch services --namespace=thanos --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus
kubectl auth can-i watch services --namespace=kube-system --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus

#kubectl auth can-i get servicemonitors --namespace=thanos --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus
#kubectl auth can-i list servicemonitors --namespace=thanos --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus
#kubectl auth can-i watch servicemonitors --namespace=thanos --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus

#kubectl auth can-i watch servicemonitors --namespace=cattle-monitoring-system  --as=system:serviceaccount:cattle-monitoring-system:rancher-monitoring-prometheus
