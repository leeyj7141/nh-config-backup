#!/bin/bash 


export KUBECONFIG=~/.kube/kube_config_cluster.yaml
alias wmi="kubectl config current-context && kubectl config view --minify | grep namespace:"
export PATH=$PATH:/var/lib/rancher/rke2/bin/
alias crictl='crictl -c /var/lib/rancher/rke2/agent/etc/crictl.yaml'
