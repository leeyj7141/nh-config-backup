#!/bin/bash 

kubectl create -n istio-system secret tls httpbin-credential \
  --key=example_certs1/httpbin.example.com.key \
  --cert=example_certs1/httpbin.example.com.crt




#cat <<EOF | kubectl apply -f -
#apiVersion: networking.istio.io/v1
#kind: Gateway
#metadata:
#  name: mygateway
#spec:
#  selector:
#    istio: ingressgateway # use istio default ingress gateway
#  servers:
#  - port:
#      number: 443
#      name: https
#      protocol: HTTPS
#    tls:
#      mode: SIMPLE
#      credentialName: httpbin-credential # must be the same as secret
#    hosts:
#    - httpbin.example.com
#EOF
#
#
#
#cat <<EOF | kubectl apply -f -
#apiVersion: networking.istio.io/v1
#kind: VirtualService
#metadata:
#  name: httpbin
#spec:
#  hosts:
#  - "httpbin.example.com"
#  gateways:
#  - mygateway
#  http:
#  - match:
#    - uri:
#        prefix: /status
#    - uri:
#        prefix: /delay
#    route:
#    - destination:
#        port:
#          number: 8000
#        host: httpbin
#EOF
#
