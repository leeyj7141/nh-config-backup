#!/bin/bash 


#curl -X GET "http://nh-elasticsearch-1:9200/.ds-metricbeat-8.0.0-2024.06.27-000001/_settings" -H 'Content-Type: application/json'

curl -X PUT "http://nh-elasticsearch-1:9200/.ds-metricbeat-8.0.0-2024.06.27-000001/_settings" -H 'Content-Type: application/json' -d'
{
  "index.mapping.total_fields.limit": 20000
}'
