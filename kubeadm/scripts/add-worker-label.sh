#!/bin/bash 

node='
nh-rancher-management-1   
nh-rancher-management-2   
nh-rancher-management-3   
'
for i in $node
do
kubectl label node $i  node-role.kubernetes.io/worker=worker
echo -- $i done ---
done


