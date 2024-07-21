#!/bin/bash 

kubeadm init  --kubernetes-version=v1.28.9  --upload-certs  --control-plane-endpoint <kube_api>:6443  --pod-network-cidr 11.0.0.0/16 --service-cidr 10.0.0.1/16
