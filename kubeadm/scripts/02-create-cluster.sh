#!/bin/bash 


ansible -m copy -a 'src=kubeadm-init.sh  dest=.' rancher-test -b 

echo '# ------ 	kubeadm init ------ #'
