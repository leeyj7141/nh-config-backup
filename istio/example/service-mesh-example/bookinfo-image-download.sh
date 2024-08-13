#!/bin/bash 

#sudo  docker pull  docker.io/istio/examples-bookinfo-details-v1:1.19.1
#sudo  docker pull  docker.io/istio/examples-bookinfo-ratings-v1:1.19.1
#sudo  docker pull  docker.io/istio/examples-bookinfo-reviews-v1:1.19.1
#sudo  docker pull  docker.io/istio/examples-bookinfo-reviews-v2:1.19.1
#sudo  docker pull  docker.io/istio/examples-bookinfo-reviews-v3:1.19.1
#sudo  docker pull  docker.io/istio/examples-bookinfo-productpage-v1:1.19.1

sudo  docker save  docker.io/istio/examples-bookinfo-details-v1:1.19.1      -o         istio_examples-bookinfo-details-v1+1.19.1
sudo  docker save  docker.io/istio/examples-bookinfo-ratings-v1:1.19.1      -o         istio_examples-bookinfo-ratings-v1+1.19.1
sudo  docker save  docker.io/istio/examples-bookinfo-reviews-v1:1.19.1      -o         istio_examples-bookinfo-reviews-v1+1.19.1
sudo  docker save  docker.io/istio/examples-bookinfo-reviews-v2:1.19.1      -o         istio_examples-bookinfo-reviews-v2+1.19.1
sudo  docker save  docker.io/istio/examples-bookinfo-reviews-v3:1.19.1      -o         istio_examples-bookinfo-reviews-v3+1.19.1
sudo  docker save  docker.io/istio/examples-bookinfo-productpage-v1:1.19.1  -o         istio_examples-bookinfo-productpage-v1+1.19.1








