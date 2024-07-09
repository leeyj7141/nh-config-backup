#!/bin/bash

# ClusterRoleBinding 조회
echo "Checking ClusterRoleBindings for cluster-admin role:"
kubectl get clusterrolebindings -o json | jq -r '.items[] | select(.roleRef.name=="cluster-admin") | .subjects[] | select(.kind=="ServiceAccount") | "\(.namespace)/\(.name)"'

# RoleBinding 조회
echo "Checking RoleBindings for cluster-admin role:"
kubectl get rolebindings --all-namespaces -o json | jq -r '.items[] | select(.roleRef.name=="cluster-admin") | .subjects[] | select(.kind=="ServiceAccount") | "\(.namespace)/\(.name)"'

