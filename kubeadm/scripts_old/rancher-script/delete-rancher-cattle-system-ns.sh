#!/bin/bash 


rolebinding='
helm-operation-bptpd-helm-installer-rolebinding
helm-operation-n7znw-helm-installer-rolebinding
'
roles='
helm-operation-bptpd-helm-installer-role
helm-operation-n7znw-helm-installer-role
'

for i in $rolebinding
do
kubectl patch rolebinding $i  -n cattle-system -p '{"metadata":{"finalizers":null}}' --type=merge
echo --- $i done ---
done


for i in $roles
do
kubectl patch role $i -n cattle-system -p '{"metadata":{"finalizers":null}}' --type=merge
echo --- $i done ---
done

#NAME                                              ROLE                                            AGE
#helm-operation-bptpd-helm-installer-rolebinding   Role/helm-operation-bptpd-helm-installer-role   64m
#helm-operation-n7znw-helm-installer-rolebinding   Role/helm-operation-n7znw-helm-installer-role   65m
#
#NAME                                       CREATED AT
#helm-operation-bptpd-helm-installer-role   2024-07-19T06:21:56Z
#helm-operation-n7znw-helm-installer-role   2024-07-19T06:20:53Z
