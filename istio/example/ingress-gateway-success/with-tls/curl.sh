#!/bin/bash 

NONE_SECURE_INGRESS_PORT=31380
SECURE_INGRESS_PORT=31390
INGRESS_HOST=172.31.39.208

#curl  -HHost:prod.test.dom --resolve "prod.test.dom:$SECURE_INGRESS_PORT:$INGRESS_HOST" \
#--cacert prod.test.dom.crt "https://prod.test.dom:$SECURE_INGRESS_PORT/"

#curl -v --cacert prod.test.dom.crt "https://prod.test.dom:444/"

#curl  --cacert prod.test.dom.crt "https://prod.test.dom:444/"
#curl --cacert prod.test.dom.crt "https://prod.test.dom:445/"

curl  --cacert prod.test.dom.crt "https://prod.test.dom:444/"
#curl  "http://prod.test.dom:8080/"

#curl  -HHost:prod.test.dom --resolve "prod.test.dom:$NONE_SECURE_INGRESS_PORT:$INGRESS_HOST" \
# "http://prod.test.dom:$NONE_SECURE_INGRESS_PORT/"
