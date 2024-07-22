#!/bin/bash 


ansible -m copy -a 'src=kubeadm-init.sh  dest=.' rancher-test2 -b 

echo '# ------ 	kubeadm init ------ #'

