#!/bin/bash 

#smsagent_build:
# - rhel 8.6 container image

images='
 docker.io/bitnami/thanos:0.35.1-debian-12-r1
 rancher/mirrored-kube-state-metrics-kube-state-metrics:v2.10.1
 rancher/mirrored-prometheus-operator-prometheus-operator:v0.65.1
 rancher/shell:v0.1.25
 rancher/mirrored-prometheus-adapter-prometheus-adapter:v0.10.0
 rancher/mirrored-prometheus-node-exporter:v1.7.0
 rancher/mirrored-prometheus-alertmanager:v0.26.0
 quay.io/oauth2-proxy/oauth2-proxy:v7.3.0
 rancher/mirrored-library-nginx:1.24.0-alpine
 rancher/mirrored-kiwigrid-k8s-sidecar:1.24.6
 rancher/mirrored-grafana-grafana:10.3.3
 rancher/mirrored-ingress-nginx-kube-webhook-certgen:v20221220-controller-v1.5.1-58-g787ea74b6
 rancher/mirrored-prometheus-operator-prometheus-operator:v0.65.1
 rancher/mirrored-prometheus-operator-prometheus-config-reloader:v0.65.1
 rancher/mirrored-prometheus-prometheus:v2.45.0
 rancher/mirrored-library-nginx:1.24.0-alpine
 rancher/mirrored-thanos-thanos:v0.30.2
 rancher/mirrored-curlimages-curl:7.85.0
 nginx:1.14.2
 progrium/stress:latest
 registry.k8s.io/e2e-test-images/jessie-dnsutils:1.3
 curlimages/curl:latest
 busybox:latest
 securecodebox/nmap:latest
 docker.elastic.co/logstash/logstash:8.9.0
 docker.elastic.co/beats/metricbeat:8.9.0
 docker.elastic.co/beats/filebeat:8.9.0
'

#for i in $images 
#do
#echo ${i//\//_}
#echo --- $i done ---
#echo
#done


for i in $images 
do
#sudo docker pull $i 
sudo docker image save $i -o /data/yjlee/images/${i//\//_}.containerimage
echo --- $i done ---
echo
done
