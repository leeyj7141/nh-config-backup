#!/bin/bash 


#mkdir example_certs1
#openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=example.com' -keyout example_certs1/example.com.key -out example_certs1/example.com.crt
#
#openssl req -out example_certs1/httpbin.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs1/httpbin.example.com.key -subj "/CN=httpbin.example.com/O=httpbin organization"
#openssl x509 -req -sha256 -days 365 -CA example_certs1/example.com.crt -CAkey example_certs1/example.com.key -set_serial 0 -in example_certs1/httpbin.example.com.csr -out example_certs1/httpbin.example.com.crt
#
#mkdir example_certs2
#openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=example.com' -keyout example_certs2/example.com.key -out example_certs2/example.com.crt
#openssl req -out example_certs2/httpbin.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs2/httpbin.example.com.key -subj "/CN=httpbin.example.com/O=httpbin organization"
#openssl x509 -req -sha256 -days 365 -CA example_certs2/example.com.crt -CAkey example_certs2/example.com.key -set_serial 0 -in example_certs2/httpbin.example.com.csr -out example_certs2/httpbin.example.com.crt
#
#openssl req -out example_certs1/helloworld.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs1/helloworld.example.com.key -subj "/CN=helloworld.example.com/O=helloworld organization"
#openssl x509 -req -sha256 -days 365 -CA example_certs1/example.com.crt -CAkey example_certs1/example.com.key -set_serial 1 -in example_certs1/helloworld.example.com.csr -out example_certs1/helloworld.example.com.crt
#
#openssl req -out example_certs1/client.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs1/client.example.com.key -subj "/CN=client.example.com/O=client organization"
#openssl x509 -req -sha256 -days 365 -CA example_certs1/example.com.crt -CAkey example_certs1/example.com.key -set_serial 1 -in example_certs1/client.example.com.csr -out example_certs1/client.example.com.crt
#

mkdir example_certs1
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=example.com' -keyout example_certs1/example.com.key -out example_certs1/example.com.crt

openssl req -out example_certs1/httpbin.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs1/httpbin.example.com.key -subj "/CN=httpbin.example.com/O=httpbin organization"
openssl x509 -req -sha256 -days 365 -CA example_certs1/example.com.crt -CAkey example_certs1/example.com.key -set_serial 0 -in example_certs1/httpbin.example.com.csr -out example_certs1/httpbin.example.com.crt

mkdir example_certs2
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=example.com' -keyout example_certs2/example.com.key -out example_certs2/example.com.crt
openssl req -out example_certs2/httpbin.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs2/httpbin.example.com.key -subj "/CN=httpbin.example.com/O=httpbin organization"
openssl x509 -req -sha256 -days 365 -CA example_certs2/example.com.crt -CAkey example_certs2/example.com.key -set_serial 0 -in example_certs2/httpbin.example.com.csr -out example_certs2/httpbin.example.com.crt

openssl req -out example_certs1/helloworld.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs1/helloworld.example.com.key -subj "/CN=helloworld.example.com/O=helloworld organization"
openssl x509 -req -sha256 -days 365 -CA example_certs1/example.com.crt -CAkey example_certs1/example.com.key -set_serial 1 -in example_certs1/helloworld.example.com.csr -out example_certs1/helloworld.example.com.crt

openssl req -out example_certs1/client.example.com.csr -newkey rsa:2048 -nodes -keyout example_certs1/client.example.com.key -subj "/CN=client.example.com/O=client organization"
openssl x509 -req -sha256 -days 365 -CA example_certs1/example.com.crt -CAkey example_certs1/example.com.key -set_serial 1 -in example_certs1/client.example.com.csr -out example_certs1/client.example.com.crt


