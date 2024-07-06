#!/bin/bash 

INDEX=${1}
#INDEX='k8s-app-metric-2024.07.01'
curl -X DELETE "http://nh-elasticsearch-1:9200/${INDEX}"

#curl -X DELETE "http://nh-elasticsearch-1:9200/_data_stream/k8s-node-log-2024.07.06"
#curl -X DELETE "http://nh-elasticsearch-1:9200/_data_stream/.ds-k8s-pod-log-2024.07.06-2024.07.06-000001"
