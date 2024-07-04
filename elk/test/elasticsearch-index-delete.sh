#!/bin/bash 

INDEX='k8s-app-metric-2024.07.03'
#INDEX='k8s-app-metric-2024.07.01'
curl -X DELETE "http://nh-elasticsearch-1:9200/${INDEX}"
