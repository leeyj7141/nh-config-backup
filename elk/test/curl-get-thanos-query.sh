#!/bin/bash 


#curl "http://3.38.76.78:30008/api/v1/query?query=nh_pod_cpu_usage:rate3m{pod=jenkins-0}"
#curl -G 'http://3.38.76.78:30008/api/v1/query' --data-urlencode 'query=nh_pod_cpu_usage:rate3m{namespace=~"example*"}' | jq . 
curl -G 'http://3.38.76.78:30008/api/v1/query' --data-urlencode 'query=nh_pod_cpu_usage:rate5m' | jq . 

#"http://thanos-query.thanos.svc.cluster.local.:9090/api/v1/query?query=nh_pod_cpu_usage:rate5m"

#curl http://thanos-query.thanos.svc.cluster.local.:9090/api/v1/query?query=nh_pod_cpu_usage:rate3m
