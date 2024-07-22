#!/bin/bash 


##repo 
#ansible -m copy -a 'src=kubernetes.repo dest=/etc/yum.repos.d/' rancher-test2 -b 
#ansible -m copy -a 'src=docker-ce.repo dest=/etc/yum.repos.d/' rancher-test2 -b 
#
## set selinux 
#ansible -m shell -a  'sudo setenforce 0'  rancher-test2 -b 
#ansible -m shell -a  "sudo sed -i 's/^SELINUX=enforcing$/SELINUX=disabled/' /etc/selinux/config "  rancher-test2 -b 
#
## install kubeadm 
#ansible -m shell -a 'sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes' rancher-test2 -b 
#ansible -m shell -a 'sudo systemctl enable --now kubelet' rancher-test2 -b 
#
## package install 
#ansible -m package -a 'name=containerd.io,cri-tools,vim' rancher-test2 -b 
#
## modules
#ansible -m copy -a 'src=containerd-module.conf dest=/etc/modules-load.d/' rancher-test2 -b 
#
## containerd configuration 
#ansible -m copy -a 'src=config.toml dest=/etc/containerd/config.toml' rancher-test2 -b 
#ansible -m copy -a 'src=crictl.yaml dest=/etc/' rancher-test2 -b 
#
## network configuration 
#ansible -m copy -a 'src=80-ipv4_forward.conf dest=/etc/sysctl.d/' rancher-test2 -b 
#
## systemd 
ansible -m systemd -a 'name=containerd state=started enabled=true' rancher-test2 -b 
#
## copy hosts 
#ansible -m copy -a 'src=/etc/hosts dest=/etc/hosts' rancher-test2 -b 

## set hostname 
#ansible -m shell -a 'hostnamectl set-hostname {{ inventory_hostname }}' rancher-test2 -b 

## reboot 
#ansible -m shell -a 'sync' rancher-test2 -b 
#ansible -m shell -a 'reboot' rancher-test2 -b 

