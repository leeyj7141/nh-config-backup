#!/bin/bash 

#kubeadm init --control-plane-endpoint 172.31.14.111:6443   --upload-certs

kubeadm init  --kubernetes-version=v1.28.9  --upload-certs  --control-plane-endpoint 172.31.14.111:6443  --pod-network-cidr 11.0.0.0/16 --service-cidr 10.0.0.1/16 

#kubeadm init --control-plane-endpoint <master-node-ip> \
#	--pod-network-cidr 11.0.0.0/16 \
#	--apiserver-advertise-address=<master-node-ip> \
#	--service-cidr 10.0.0.1/16 \
#	--upload-certs
