#!/bin/bash 

kubeadm join 172.31.14.111:6443 --token y5q03i.0pdhy3dirtg581vl --discovery-token-ca-cert-hash sha256:d0be2f1968dce5216e45a80555bfca6262ff60454240d518cab2fdd20e6ed6eb --control-plane --certificate-key a468a3758b17f62222974c78816d8a048a9438997185f18aab33a687ddaca01d
