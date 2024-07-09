#!/bin/bash 

curl -X DELETE "http://nh-elasticsearch-1:9200/_index_template/$1"

