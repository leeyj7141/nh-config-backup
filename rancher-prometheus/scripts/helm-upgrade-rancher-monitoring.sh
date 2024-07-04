#!/bin/bash 

#helm repo add rancher-charts https://charts.rancher.io

#helm upgrade rancher-monitoring  rancher-charts/rancher-monitoring  -f ../rancher-helm-prometheus-operator.yml  --namespace cattle-monitoring-system  

helm upgrade rancher-monitoring  rancher-charts/rancher-monitoring   --namespace cattle-monitoring-system  -f ../rancher-helm-prometheus-operator.yml_org  -f ../thanos_config_override.yml

# ------ rollback ----- # 
#helm upgrade rancher-monitoring  rancher-charts/rancher-monitoring  -f ../rancher-helm-prometheus-operator.yml_org  --namespace cattle-monitoring-system  
