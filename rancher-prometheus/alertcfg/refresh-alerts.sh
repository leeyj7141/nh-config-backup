#!/bin/bash

#kubectl -n cattle-monitoring-system delete pod prometheus-rancher-monitoring-prometheus-0 prometheus-rancher-monitoring-prometheus-1 alertmanager-rancher-monitoring-alertmanager-0 rancher-monitoring-operator-9b85587d8-jhrdf

kubectl -n cattle-monitoring-system scale statefulset.apps/alertmanager-rancher-monitoring-alertmanager --replicas 0
kubectl -n cattle-monitoring-system scale deployment.apps/rancher-monitoring-operator --replicas 0
kubectl -n cattle-monitoring-system scale statefulset.apps/prometheus-rancher-monitoring-prometheus --replicas 0

kubectl -n cattle-monitoring-system scale statefulset.apps/alertmanager-rancher-monitoring-alertmanager --replicas 1
kubectl -n cattle-monitoring-system scale deployment.apps/rancher-monitoring-operator --replicas 1
kubectl -n cattle-monitoring-system scale statefulset.apps/prometheus-rancher-monitoring-prometheus --replicas 2
