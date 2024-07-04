#!/bin/bash 


#helm install thanos bitnami/thanos  --namespace thanos -f ../lma-values.yml  
helm upgrade thanos bitnami/thanos  --namespace thanos -f ../thanos-values.yml  
