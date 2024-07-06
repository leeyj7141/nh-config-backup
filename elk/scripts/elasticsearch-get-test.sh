#!/bin/bash 

curl -X GET "http://nh-elasticsearch-1:9200/$1/_search?pretty"
#curl -X GET "http://nh-elasticsearch-1:9200/.ds-k8s-node-log-2024.07.06-2024.07.06-000001/_search?pretty"
#curl -X GET "http://nh-elasticsearch-1:9200/k8s-platform_health-2024.07.01/_search?pretty"

#curl -X GET "http://nh-elasticsearch-1:9200/.ds-metricbeat-8.0.0-2024.06.27-000001/_search?pretty"
#curl -X GET "http://nh-elasticsearch-1:9200/my_index/_search?pretty"

