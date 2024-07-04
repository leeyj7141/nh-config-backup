#!/bin/bash 

#curl "http://172.31.39.208:30008/api/v1/query?match%5B%5D=%7B__name__%21%3D%22%22%7D"

#curl -G 'http://172.31.39.208:30008/api/v1/query' --data-urlencode 'query=container_cpu_usage_seconds_total'
#curl -G 'http://172.31.39.208:30008/api/v1/query' --data-urlencode 'query=pvc_usage:ratio'

#curl -G 'http://172.31.39.208:30008/api/v1/query' --data-urlencode 'query=kube_pod_status_phase{phase="Failed"}'
curl -G 'http://172.31.39.208:30008/api/v1/query?query=kube_pod_status_phase%7Bphase%3D%22Failed%22%7D'

#curl -G http://thanos-query.thanos.svc.cluster.local:9090/api/v1/query?query=kube_pod_status_phase%7Bphase%3D%22Failed%22%7D
