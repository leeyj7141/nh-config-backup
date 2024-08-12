#!/bin/bash 


kubectl scale --replicas 0 deploy -n cattle-monitoring-system rancher-monitoring-grafana 
kubectl delete pvc  -n cattle-monitoring-system rancher-monitoring-grafana 
