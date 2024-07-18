#!/bin/bash 

sudo docker run --rm -itu root  --name kolla-toolbox-$(uuidgen) --env-file adminrc-for-container  kolla/centos-source-kolla-toolbox:yoga  bash 

