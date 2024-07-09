#!/bin/bash

# 모든 네임스페이스에서 디폴트 ServiceAccount를 사용하고 있는 Pod 찾기
echo "Checking Pods using default ServiceAccount in all namespaces:"

# kubectl을 사용하여 모든 Pod의 정보를 JSON 형식으로 가져옵니다.
kubectl get pods --all-namespaces -o json | jq -r '
  .items[] | 
  select(.spec.serviceAccountName == "default") | 
  "\(.metadata.namespace)/\(.metadata.name)"
'

