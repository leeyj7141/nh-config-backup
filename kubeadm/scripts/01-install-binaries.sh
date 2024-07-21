#!/bin/bash 



##repo 
#ansible -m copy -a 'src=kubernetes.repo dest=/etc/yum.repos.d/' rancher-test -b 
#ansible -m copy -a 'src=docker-ce.repo dest=/etc/yum.repos.d/' rancher-test -b 
#
## set selinux 
#ansible -m shell -a  'sudo setenforce 0'  rancher-test -b 
#ansible -m shell -a  "sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config "  rancher-test -b 
#
## install kubeadm 
#ansible -m shell -a 'sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes' rancher-test -b 
#ansible -m shell -a 'sudo systemctl enable --now kubelet' rancher-test -b 
#
## package install 
#ansible -m package -a 'name=containerd.io,cri-tools,vim' rancher-test -b 
#
## modules
#ansible -m copy -a 'src=containerd-module.conf dest=/etc/modules-load.d/' rancher-test -b 
#
# containerd configuration 
#ansible -m copy -a 'src=config.toml dest=/etc/containerd/config.toml' rancher-test -b 
#ansible -m copy -a 'src=crictl.yaml dest=/etc/' rancher-test -b 

## network configuration 
#ansible -m copy -a 'src=80-ipv4_forward.conf dest=/etc/sysctl.d/' rancher-test -b 

## systemd 
##ansible -m systemd -a 'name=containerd state=started' rancher-test -b 

## copy hosts 
#ansible -m copy -a 'src=/etc/hosts dest=/etc/hosts' rancher-test -b 

## reboot 
#ansible -m shell -a 'sync' rancher-test -b 
#ansible -m shell -a 'reboot' rancher-test -b 

