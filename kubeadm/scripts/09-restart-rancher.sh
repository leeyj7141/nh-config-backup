#!/bin/bash 


kubectl rollout restart deployment/rancher -n cattle-system
