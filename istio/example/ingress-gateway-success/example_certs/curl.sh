#!/bin/bash 

SECURE_INGRESS_PORT=31390
INGRESS_HOST=3.38.76.78

curl  -HHost:httpbin.example.com --resolve "httpbin.example.com:$SECURE_INGRESS_PORT:$INGRESS_HOST" \
--cacert example_certs1/example.com.crt "https://httpbin.example.com:$SECURE_INGRESS_PORT/"

#--cacert example_certs1/example.com.crt "https://httpbin.example.com:$SECURE_INGRESS_PORT/status/418"

