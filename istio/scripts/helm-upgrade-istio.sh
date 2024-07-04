#!/bin/bash 

helm upgrade rancher-istio rancher-charts/rancher-istio -f ../values.yaml  --namespace istio-system
