#!/bin/bash

# CA 키 및 인증서 생성
openssl ecparam -name prime256v1 -genkey -noout -out ca.key
openssl req -new -x509 -sha256 -key ca.key -out ca.crt -config openssl.cnf

# 서버 키 생성
openssl ecparam -name prime256v1 -genkey -noout -out server.key

# 서버 CSR 생성 (config 파일 참조)
openssl req -new -sha256 -key server.key -out server.csr -config openssl.cnf

# 서버 인증서 생성 (CA 서명)
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 10000 -sha256 -extensions v3_ca -extfile openssl.cnf

# CA 인증서를 PEM 형식으로 변환
openssl x509 -inform PEM -in ca.crt > cacerts.pem

# 인증서 및 키 파일 복사
cp ca.crt tls.crt
cp ca.key tls.key
