#!/bin/bash 


curl -X PUT "http://nh-elasticsearch-1:9200/_template/k8s-app-metric-*" -H 'Content-Type: application/json' -d'
{
  "index_patterns": ["k8s-app-metric-*"],
  "mappings": {
    "properties": {
      "alert": {
        "type": "keyword"
      }
    }
  }
}'

