#!/bin/bash 

THANOS_PV=$(kubectl  get pv |grep -i thanos |awk '{print $1}')
THANOS_PVC=$(kubectl  get pvc -n thanos |awk '{print }')

helm uninstall thanos  --namespace thanos 

#echo $THANOS_PV 

for i in $THANOS_PVC
do
kubectl delete  pvc -n thanos $i 
echo --- pvc $i deleted --- 
done

for i in $THANOS_PV
do
kubectl delete  pv -n thanos $i 
echo --- pv $i deleted --- 
done
