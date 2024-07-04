#!/bin/bash 

curl -X POST "http://nh-elasticsearch-1:9200/my_index/_doc/1" -H 'Content-Type: application/json' -d'
{
  "user": "kimchy",
  "post_date": "2024-06-27T14:12:12",
  "message": "Trying out Elasticsearch"
}
'

