#!/bin/bash 

#kubeadm join 172.31.14.111:6443 --token y5q03i.0pdhy3dirtg581vl --discovery-token-ca-cert-hash sha256:d0be2f1968dce5216e45a80555bfca6262ff60454240d518cab2fdd20e6ed6eb --control-plane --certificate-key a468a3758b17f62222974c78816d8a048a9438997185f18aab33a687ddaca01d


kubeadm join 172.31.42.33:6443 --token 9lx5r3.vztp9a4zg5wnh6zy --discovery-token-ca-cert-hash sha256:9706ce8f9bf4f1a766249741cbb8f08071f139491ef0db71ed2b5270187708ef --control-plane --certificate-key 5e6d524b8604c6d9d4165e68646ebb0410df1673ece71de646c3b704ed6f9060
