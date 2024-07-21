#!/bin/bash

NS='
cattle-fleet-clusters-system
cattle-fleet-local-system
cattle-fleet-system
cattle-global-data
cattle-global-nt
cattle-impersonation-system
cattle-provisioning-capi-system
cattle-system
'

for i in $NS
do
kubectl delete ns $i 
echo --- $i done ---
done
