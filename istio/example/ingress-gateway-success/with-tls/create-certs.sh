#!/bin/bash 

#openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=prod.test.dom/O=MyOrg"
#kubectl create secret tls productpage-tls --cert=tls.crt --key=tls.key -n istio-example

#openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=prod.test.dom' -keyout prod.test.dom.key -out prod.test.dom.crt
kubectl create -n istio-system secret tls productpage-credential --key=prod.test.dom.key --cert=prod.test.dom.crt
