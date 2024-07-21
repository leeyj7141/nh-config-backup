#!/bin/bash 

#openssl ecparam -name prime256v1 -genkey -noout -out ca.key
#openssl req -new -x509 -sha256 -key ca.key -out ca.crt -config openssl.cnf
#openssl req -new -x509 -sha256 -key ca.key -out ca.crt

#openssl ecparam -name prime256v1 -genkey -noout -out server.key
#openssl req -new -sha256 -key server.key -out server.csr
#openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 10000 -sha256
#openssl x509 -inform PEM -in ca.crt > cacerts.pem
#cp ca.crt tls.crt
#cp ca.key tls.key


#kubectl -n cattle-system create secret tls tls-rancher-ingress \
#  --cert=tls.crt \
#  --key=tls.key
#
#kubectl -n cattle-system create secret generic tls-ca \
#  --from-file=cacerts.pem=./cacerts.pem
#
kubectl -n cattle-system delete secret tls-rancher-internal-ca

kubectl -n cattle-system create secret tls tls-rancher-internal-ca \
  --cert=tls-rancher-ingress.crt \
  --key=tls-rancher-ingress.key