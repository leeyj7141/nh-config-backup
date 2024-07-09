#!/bin/bash

# ClusterRole 조회
echo "Checking ClusterRoles for '*' in resources:"
kubectl get clusterroles -o json | jq -r '
  .items[] | 
  select(.rules != null) |
  select(.rules[].resources[]? == "*") | 
  .metadata.name
'

# Role 조회
echo "Checking Roles for '*' in resources:"
kubectl get roles --all-namespaces -o json | jq -r '
  .items[] | 
  select(.rules != null) |
  select(.rules[].resources[]? == "*") | 
  "\(.metadata.namespace)/\(.metadata.name)"
'

