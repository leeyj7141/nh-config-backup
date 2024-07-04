#!/bin/bash 


curl -X GET "http://nh-elasticsearch-1:9200/k8s-app-metric-2024.07.03/_search" -H 'Content-Type: application/json' -d'
{
  "_source": ["message", "@timestamp", "NHcluster", "nhalert"],
  "query": {
    "match_all": {}
  }
}'


