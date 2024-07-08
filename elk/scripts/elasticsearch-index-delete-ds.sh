#!/bin/bash 

INDEX=${1}
#INDEX='k8s-app-metric-2024.07.01'
#curl -X DELETE "http://nh-elasticsearch-1:9200/${INDEX}"

curl -X DELETE "http://nh-elasticsearch-1:9200/_data_stream/${INDEX}"
#curl -X DELETE "http://nh-elasticsearch-1:9200/_data_stream/.ds-metricbeat-8.0.0-2024.06.27-000001"
