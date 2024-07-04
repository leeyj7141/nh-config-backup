#!/bin/bash 


POD=$(kubectl get pod -n cattle-monitoring-system |grep -i monitoring | awk '{print $1}')

for i in $POD 
do
kubectl describe pod -n cattle-monitoring-system $i |grep -i image:
echo --- $i done --- 
done
