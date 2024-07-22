#!/bin/bash 

kubectl create ns cluster-autoscaler 
kubectl apply -f rancher-configmap.yaml
kubectl apply -f rancher-configmap-ca.yaml

#helm repo add autoscaler https://kubernetes.github.io/autoscaler
#
#helm repo update autoscaler

## Cluster Autoscaler installation
#helm upgrade --install -f rancher-values.yaml --namespace cluster-autoscaler cluster-autoscaler autoscaler/cluster-autoscaler

## upgrade
helm upgrade -f rancher-values.yaml --namespace cluster-autoscaler cluster-autoscaler autoscaler/cluster-autoscaler
