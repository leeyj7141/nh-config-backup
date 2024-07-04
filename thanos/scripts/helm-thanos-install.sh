#!/bin/bash 


helm install thanos bitnami/thanos  --namespace thanos -f ../thanos-values.yml  
