#!/bin/bash 

wget https://github.com/loadimpact/k6/releases/download/v0.32.0/k6-v0.32.0-linux-amd64.tar.gz
tar -xvf k6-v0.32.0-linux-amd64.tar.gz
sudo cp k6-v0.32.0-linux-amd64/k6 /usr/local/bin/
