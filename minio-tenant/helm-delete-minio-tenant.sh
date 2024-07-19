#!/bin/bash 


#helm install --namespace tenant-ns --create-namespace tenant minio/tenant

#helm install --namespace minio2  minio-tenant minio-operator/tenant -f values.yaml

helm uninstall --namespace minio2  minio-tenant 

kubectl delete pvc -n minio2 --selector v1.min.io/tenant=myminio
