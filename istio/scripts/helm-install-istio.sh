#!/bin/bash 

helm install  rancher-istio rancher-charts/rancher-istio -f ../values.yaml  --namespace istio-system
