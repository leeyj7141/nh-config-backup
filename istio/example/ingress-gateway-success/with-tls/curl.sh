#!/bin/bash 

SECURE_INGRESS_PORT=31390
INGRESS_HOST=3.38.76.78

curl  -HHost:prod.test.dom --resolve "prod.test.dom:$SECURE_INGRESS_PORT:$INGRESS_HOST" \
--cacert prod.test.dom.crt "https://prod.test.dom:$SECURE_INGRESS_PORT/"
