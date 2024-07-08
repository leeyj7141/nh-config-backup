#!/bin/bash 

kubectl exec -it rancher-monitoring-grafana-78755b48b4-ww6pc -- curl -X POST -H "Content-Type: application/json" -d '{"name":"apiorg"}' http://admin:prom-operator@localhost:3000/api/orgs

#curl -X POST -H "Content-Type: application/json" -d '{"loginOrEmail":"admin", "role": "Admin"}' http://admin:admin@localhost:3000/api/orgs/<org id of new org>/users
