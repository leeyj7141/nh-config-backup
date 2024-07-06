#!/bin/bash 


curl -u admin:prom-operator -H "Content-Type: application/json" \
    http://master-test2:31111/api/datasources

