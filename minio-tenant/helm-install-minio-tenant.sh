#!/bin/bash 


#helm install --namespace tenant-ns --create-namespace tenant minio/tenant
#helm uninstall --namespace minio2  minio-tenant 

helm install --namespace minio2  minio-tenant minio-operator/tenant -f values.yaml
