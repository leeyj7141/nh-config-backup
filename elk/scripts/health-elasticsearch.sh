#!/bin/bash 

curl -X GET "nh-elasticsearch-2:9200/_cluster/health?pretty"
echo 
echo '# -------------------------------------------------------- # ' 
echo 
curl -X GET "nh-elasticsearch-2:9200/_cat/nodes?v"
