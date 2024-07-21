#!/bin/bash 


#kubectl apply -f https://raw.githubusercontent.com/nginxinc/kubernetes-ingress/v3.6.1/deploy/crds.yaml
#helm install my-release oci://ghcr.io/nginxinc/charts/nginx-ingress --version 1.3.1  -f ingress-values.yaml

#helm upgrade -n kube-system my-release oci://ghcr.io/nginxinc/charts/nginx-ingress --version 1.3.1  -f ingress-values.yaml
helm install -n kube-system my-release oci://ghcr.io/nginxinc/charts/nginx-ingress --version 1.3.1  -f ingress-values.yaml
