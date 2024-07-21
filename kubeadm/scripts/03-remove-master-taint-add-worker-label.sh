#!/bin/bash 

kubectl taint nodes --all node-role.kubernetes.io/control-plane-


node='
nh-rancher-test-cluster-1-1
nh-rancher-test-cluster-2
nh-rancher-test-cluster-3
'
for i in $node
do
kubectl label node $i  node-role.kubernetes.io/worker=worker
echo -- $i done ---
done


