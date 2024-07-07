#!/bin/bash 

#helm install rancher-monitoring-grafana ./  --namespace cattle-monitoring-system -f values.yaml_org -f values_config_override.yml 
helm uninstall rancher-monitoring-grafana   --namespace cattle-monitoring-system 

