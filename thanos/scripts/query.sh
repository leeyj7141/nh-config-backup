#!/bin/bash 


curl -G 'http://172.31.39.208:30008/api/v1/query' --data-urlencode 'query={__name__=~".+"}'
#curl -G 'http://thanos-query.thanos.svc.cluster.local:9090/api/v1/query' --data-urlencode 'query={__name__=~".+"}'

