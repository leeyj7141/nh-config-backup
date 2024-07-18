#!/bin/bash 

#kubeadm join 172.31.14.111:6443 --token y5q03i.0pdhy3dirtg581vl --discovery-token-ca-cert-hash sha256:d0be2f1968dce5216e45a80555bfca6262ff60454240d518cab2fdd20e6ed6eb --control-plane --certificate-key a468a3758b17f62222974c78816d8a048a9438997185f18aab33a687ddaca01d


kubeadm join 172.31.42.33:6443 --token hqo2f3.cp3p9ak69iyiktel --discovery-token-ca-cert-hash sha256:d3459f88476aa6f81efa3823a9975fb8c7974866ff72f41969c15b70aa4ffa87 --control-plane --certificate-key d23805d9f9cb308ab14985367850aa2a8ba1436702c361d21907f4a51c7ad11a
