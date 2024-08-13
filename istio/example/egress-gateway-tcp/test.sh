#!/bin/bash 


helm template install/kubernetes/helm/istio/ --name istio-egressgateway --namespace istio-system -x charts/gateways/templates/deployment.yaml -x charts/gateways/templates/service.yaml --set gateways.istio-ingressgateway.enabled=false --set gateways.istio-egressgateway.enabled=true --set gateways.istio-egressgateway.ports[0].port=80 --set gateways.istio-egressgateway.ports[0].name=http --set gateways.istio-egressgateway.ports[1].port=443 --set gateways.istio-egressgateway.ports[1].name=https --set gateways.istio-egressgateway.ports[2].port=$EGRESS_GATEWAY_MONGODB_PORT --set gateways.istio-egressgateway.ports[2].name=mongo | kubectl apply -f -


