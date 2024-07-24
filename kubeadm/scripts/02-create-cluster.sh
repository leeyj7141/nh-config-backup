#!/bin/bash 


ansible -m copy -a 'src=kubeadm-init.sh  dest=.' rancher-test3 -b 

echo '# ------ 	kubeadm init ------ #'

